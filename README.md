# Design de Computadores

Projetos para a aula de Design de computadores do Insper

## Relogio utilizando processador personalizado

O objetivo do projeto é a implementação de um processador, que será utilizado em um relógio com as seguintes características:
* Indica horas, minutos e segundos (através do display de sete segmentos);
* Possui algum sistema para acertar o horário;
* Possui seleção da base de tempo (contagem em segundos e 

**Características do processador**
* Arquitetura Harvard;
* Topologia: Registrador-Memória
* _Para saber mais leia /relogio/RelatorioProcessador.pdf_

## MIPS
Este projeto é a implementação de um processador RISC de 32 bits, compatível com o MIPS DLX. Processador organizado em ciclo-único.

**Instruções Implementadas**
|  R  |  I   |  J  |
| --- | ---- |---- |
| ADD | LW   |  J  |
| SUB | SW   | JAL |
| AND | BEQ  |     |
| OR  | LUI  |     |
| SLT | ADDI |     |
| JR  | ANDI |     |
| NOR | ORI  |     |
| SLL | SLTI |     |
| SRL | BNE  |     |