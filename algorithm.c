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
 * Sketch do Algoritmo
 * ************************************************************** */

#include <math.h>
#include "driverlib/algorithm.h"

// Retornar o maior valor positivo de um vetor
int _max(int n, int vector[]) {
	int i;
	int maior = 0;

	for (i=0; i<n; i++) { // Roda o vetor
		if (vector[i] > maior) {		// Se for maior que o maior armazenado, troca
			maior = vector[i];
		}
	}

	return maior;						// Retorna o maior valor
}

/*
// Retornar o maior valor positivo de um vetor de float
float _maxFloat(int n, float vector[]) {
	int i;
	float maior = 0;

	for (i=0; i<n; i++) { // Roda o vetor
		if (vector[i] > maior) {		// Se for maior que o maior armazenado, troca
			maior = vector[i];
		}
	}

	return maior;						// Retorna o maior valor
}

// Efetua a escala dos valores dos vetores armazenados (divide todos os valores pelo maior de cada)
void _normalizar() {
	uint32_t maxValue = 0;
	int i;

	maxValue = _maxFloat(NUM_AMOSTRAS + 2*DELAY_MAX, bufferDatabase);		// Obter o maior valor do vetor DB

	for (i=0; i<NUM_AMOSTRAS + 2*DELAY_MAX; i++) {				// Roda os valores
		bufferDatabase[i] = (bufferDatabase[i])/(maxValue);		// Realiza a divis�o
	}

	maxValue = _maxFloat(NUM_AMOSTRAS + 2*DELAY_MAX, bufferConversao);	// Obter o maior valor do vetor AQ

	for (i=0; i<NUM_AMOSTRAS + 2*DELAY_MAX; i++) {				// Roda os valores
		bufferConversao[i] = (bufferConversao[i])/(maxValue);	// Realiza a divis�o
	}

	return;
} */

// Retorna o valor central da autocorrela��o de um vetor (Rxx[0])
int autoCorrelate(int signal[]) {
	int n;
	rAuto = 0;

	for (n = 0; n < (NUM_AMOSTRAS + 2*DELAY_MAX) - 1; n++) {	// Roda as posi��es
		rAuto += signal[n]*signal[n];							// Efetua a soma dos quadrados
	}

	return rAuto;												// Retorna o valor
}

// Retorna o maior valor de crosscorrela��o entre dois vetores (max(Rxy[k]))
int crossCorrelate(int signal1[], int signal2[]) {
	int n, k;

	for (k = -DELAY_MAX; k <= DELAY_MAX; k++) {						// Para os atrasos relevantes
		for (n = 0; n < (NUM_AMOSTRAS + 2*DELAY_MAX) - 1; n++) {	// Roda as posi��es
			rCross[DELAY_MAX + k] += signal1[n]*signal2[n-k];		// Efetua a opera��o
		}
	}

	return _max(2*DELAY_MAX + 1, rCross);
	//return _maxFloat(2*DELAY_MAX + 1, rCross);						// Retorna o maior valor
}

// Validar se o sinal AQ � parecido com o DB, considerando a toler�ncia
bool validate() {
	float coefCorrelacao;
	//float
	int auto1, auto2, cross12;

	//_normalizar();													// Escala os vetores

	auto1 = autoCorrelate(bufferDatabase);							// Calcula Autocorrela��o do sinal DB
	auto2 = autoCorrelate(bufferConversao);							// Calcula Autocorrela��o do sinal AQ
	cross12 = crossCorrelate(bufferDatabase, bufferConversao);		// Calcula Crosscorrela��o DB/AQ

	coefCorrelacao = (cross12*cross12)/sqrt(auto1*auto2);			// Calcula o coeficiente de correla��o (rho)

	return (coefCorrelacao >= MINIMO_VALIDACAO ? true : false);		// Retorna true se o coeficiente � maior que o m�nimo tolerado
}
