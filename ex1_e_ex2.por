programa
{
	
	funcao inicio()
	{
	inteiro vetor[5]
		//1. Escreva um algoritmo que dado um vetor, já inicializado, de 5 númerosinteiros escolhidos por você, exiba cada elemento desse vetor, umabaixo do outro.
		//2. Escreva um algoritmo que exiba o mesmo vetor do exercício anterior emordem inversa.
		cadeia n = "\n\n\n\n\n\n\n\n\n\n\n\n\n"
		cadeia opc = ""
		para(inteiro i = 0; i < 5; i++){
			escreva(n, "Informe o valor ", i + 1, " : ")
			leia(vetor[i])
		}
		escreva(n, "Na ordem informada ou inversa?	1: normal	2:inversa")
		enquanto(opc != "1" e opc != "2"){
			leia(opc)
			se(opc == "1"){
				escreva(n)
				para(inteiro i = 0; i < 5 ; i++){
					escreva(vetor[i], "\n")
				}
			}se(opc == "2"){
				para(inteiro i = 4; i >= 0; i--){
					escreva(vetor[i], "\n")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 780; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */