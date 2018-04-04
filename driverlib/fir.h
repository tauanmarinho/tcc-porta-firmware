/* ************************************************************** *
 * UTFPR - Universidade Tecnologica Federal do Paran�
 * Engenharia Eletr�nica
 * Trabalho de Conclus�o de Curso
 * ************************************************************** *
 * Sistema de Seguran�a baseado em Reconhecimento de Senha Falada
 * ************************************************************** *
 * Equipe:
 * Luiz Felipe Kim Evaristo
 * Tauan Marinho
 * Tiago Henrique Faxina
 * Tiago Mariani Palte
 * ************************************************************** *
 * Header do Filtro FIR (Constrained Least-Squares)
 * ************************************************************** */
#include <stdint.h>

#define ORDEM 6

uint8_t bufferFiltro[ORDEM + 1];
float coefFiltro[] = {0.06523, 0.149367, 0.21529, 0.240211, 0.21529, 0.149367, 0.06523};

void FIR(uint8_t sinal);
