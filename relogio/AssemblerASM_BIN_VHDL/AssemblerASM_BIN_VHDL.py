"""
Criado em 07/Fevereiro/2022

@autor: Marco Mello e Paulo Santos


Regras:

1) O Arquivo ASM.txt não pode conter linhas iniciadas com caracter ' ' ou '\n')
2) Linhas somente com comentários são excluídas 
3) Instruções sem comentário no arquivo ASM receberão como comentário no arquivo BIN a própria instrução
4) Exemplo de codigo invalido:
                            0.___JSR @14 #comentario1
                            1.___#comentario2           << Invalido ( Linha somente com comentário )
                            2.___                       << Invalido ( Linha vazia )
                            3.___JMP @5  #comentario3
                            4.___JEQ @9
                            5.___NOP
                            6.___NOP
                            7.___                       << Invalido ( Linha vazia )
                            8.___LDI $5                 << Invalido ( Linha iniciada com espaço (' ') )
                            9.___ STA $0
                            10.__CEQ @0
                            11.__JMP @2  #comentario4
                            12.__NOP
                            13.__ LDI $4                << Invalido ( Linha iniciada com espaço (' ') )
                            14.__CEQ @0
                            15.__JEQ @3
                            16.__#comentario5           << Invalido ( Linha somente com comentário )
                            17.__JMP @13
                            18.__NOP
                            19.__RET
                                
5) Exemplo de código válido (Arquivo ASM.txt):
                            0.___JSR @14 #comentario1
                            1.___JMP @5  #comentario3
                            2.___JEQ @9
                            3.___NOP
                            4.___NOP
                            5.___LDI $5
                            6.___STA $0
                            7.___CEQ @0
                            8.___JMP @2  #comentario4
                            9.___NOP
                            10.__LDI $4
                            11.__CEQ @0
                            12.__JEQ @3
                            13.__JMP @13
                            14.__NOP
                            15.__RET
                            
6) Resultado do código válido (Arquivo BIN.txt):
                            0.__tmp(0) := x"90E"; -- comentario1
                            1.__tmp(1) := x"605"; -- comentario3
                            2.__tmp(2) := x"709"; -- JEQ @9
                            3.__tmp(3) := x"000"; -- NOP
                            4.__tmp(4) := x"000"; -- NOP
                            5.__tmp(5) := x"405"; -- LDI $5
                            6.__tmp(6) := x"500"; -- STA $0
                            7.__tmp(7) := x"800"; -- CEQ @0
                            8.__tmp(8) := x"602"; -- comentario4
                            9.__tmp(9) := x"000"; -- NOP
                            10._tmp(10) := x"404"; -- LDI $4
                            11._tmp(11) := x"800"; -- CEQ @0
                            12._tmp(12) := x"703"; -- JEQ @3
                            13._tmp(13) := x"60D"; -- JMP @13
                            14._tmp(14) := x"000"; -- NOP
                            15._tmp(15) := x"A00"; -- RET

"""



assembly = 'ASM.txt' #Arquivo de entrada de contem o assembly
destinoBIN = 'BIN.txt' #Arquivo de saída que contem o binário formatado para VHDL

#definição dos mnemônicos e seus
#respectivo OPCODEs (em Hexadecimal)
mne =	{ 
       "NOP":   "0",
       "LDA":   "1",
       "SOMA":  "2",
       "SUB":   "3",
       "LDI":   "4",
       "STA":   "5",
       "JMP":   "6",
       "JEQ":   "7",
       "CEQ":   "8",
       "JSR":   "9",
       "RET":   "A",
       "JNE":   "B",
       "CLT":   "C",
       "JLT":   "D",
       "ADDI":   "E",
}

#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits)
def  converteArroba(line, registrador):
    line = line.split('@')
    try:
        line[1] = int(line[1])
    except:
        line[1] = tabela_simbolos[line[1]]
    line[1] =  (f'" & {registrador} & std_logic_vector(to_unsigned({line[1]}, addrWidth))')
    # line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line
 
#Converte o valor após o caractere cifrão'$'
#em um valor hexadecimal de 2 dígitos (8 bits) 
def  converteCifrao(line, registrador):
    line = line.split('$')
    # line[1] = f"""" & '0' & x"{hex(int(line[1]))[2:].upper().zfill(2)}" """
    line[1] =  (f'" & {registrador} & std_logic_vector(to_unsigned({line[1]}, addrWidth))')
    # line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line
        
#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line
    
#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits)
def defineRegistrador(line):
    line = line.split(' ')
    if "%R1" in line:
        return '"01"'
    if "%R2" in line:
        return '"10"'
    if "%R3" in line:
        return '"11"'
    
    return '"00"'

#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line = line.split(' ')
    try:
        if "%" in line[1]:
            line.pop(1)
    except:
        pass
    line[0] = mne[line[0]]
    
    line = "".join(line)
    return line

tabela_simbolos = {}

def converteLabel(line, idx):
    line = line.split(':')
    if line[0] in tabela_simbolos.keys():
        return
    tabela_simbolos[line[0]] = idx
    


with open(assembly, "r") as f: #Abre o arquivo ASM
    lines = f.readlines() #Verifica a quantidade de linhas

# Passa por todo documento procurando labels:
idx = 0
for line in lines:
    #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
    if line == '\n':
        continue
    if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
        line = line.replace("\n", "")
        print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
    
    #Se a linha for válida para conversão, executa
    else:
        
        #Exemplo de linha => 1. JSR @14 #comentario1
        comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
        instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14
        
        if ':' in instrucaoLine:
            converteLabel(instrucaoLine, idx)
        
        else:
            idx+=1

print(tabela_simbolos)
    
with open(destinoBIN, "w") as f:  #Abre o destino BIN

    cont = 0 #Cria uma variável para contagem
    
    for line in lines:
        if line == '\n':
            continue    
        #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
        
        #Se a linha for válida para conversão, executa
        else:
            if ':' in line:
                continue
            
            #Exemplo de linha => 1. JSR @14 #comentario1
            comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
            instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14
            registrador = defineRegistrador(instrucaoLine)
            instrucaoLine = trataMnemonico(instrucaoLine) #Trata o mnemonico. Ex(JSR @14): x"9" @14
                  
            if '@' in instrucaoLine: #Se encontrar o caractere arroba '@' 
                instrucaoLine = converteArroba(instrucaoLine, registrador) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                    
            elif '$' in instrucaoLine: #Se encontrar o caractere cifrao '$' 
                instrucaoLine = converteCifrao(instrucaoLine, registrador) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
            
            else: #Senão, se a instrução nao possuir nenhum imediator, ou seja, nao conter '@' ou '$'
                instrucaoLine = instrucaoLine.replace("\n", "") #Remove a quebra de linha
                instrucaoLine = f'{instrucaoLine}"' + f' & {registrador}' + f' & std_logic_vector(to_unsigned({0}, addrWidth))'  #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
            
                
            
            line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + ';\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN
                                                                                                       #Entrada => 1. JSR @14 #comentario1
                                                                                                       #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1
                                        
            cont+=1 #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line) #Escreve no arquivo BIN.txt
            
            print(line,end = '') #Print apenas para debug

