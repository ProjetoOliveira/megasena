Algoritmo "megasena"
// Descri??o   : Solicitar ao usu?rio 6 dezenas diferentes. Os n?meros que o
//usu?rio pode escolher varia de 01 ? 59, e informar os acertos.
// Autor(a)    : Helo?sa
// Data atual  : 11/27/2022
Var
nmr, cont, cond, novo, sort, acertados: inteiro
aposta: vetor [1..6] de inteiro
sorteio: vetor [1..6] de inteiro

procedimento novo()
Inicio
se ((novo >= 1) e (novo < 60)) entao
   para cond de 1 ate cont faca
      se (novo <> aposta[cond]) entao
         aposta[cont] <- novo
      fimse
   fimpara
senao
   escreval("Dezena inv?lida. Escreva uma diferente da anterior e de 1 a 59: ")
   leia(novo)
   aposta[cont] <- novo
fimse
fimprocedimento


Inicio
para cont de 1 ate 6 faca
   escreval("Digite a", cont," dezena: ")
   leia(nmr)
   se ((nmr >= 1) e (nmr < 60)) entao
      para cond de 1 ate cont faca
         se (nmr <> aposta[cont]) entao
            aposta[cont] <- nmr
         fimse
      fimpara
   senao
      escreval("Dezena inv?lida. Digite outra outra: ")
      leia(novo)
      novo()
   fimse
   limpatela
fimpara

para sort de 1 ate 6 faca
   sorteio[sort] <- RANDI(60 + 1)
fimpara

escreval()
escreva("Suas dezenas digitadas foram: ")
para cont de 1 ate 6 faca
   escreva(aposta[cont])
fimpara
escreval()
escrevaL("------------------------------------------------------")
escreval()

escreva("As dezenas que foram sorteadas s?o: ")
para sort de 1 ate 6 faca
   escreva(sorteio[sort])
fimpara
escreval()
escrevaL("------------------------------------------------------")

para cont de 1 ate 6 faca
   para sort de 1 ate 6 faca
      se (aposta[cont] = sorteio[sort]) entao
         acertados <- acertados + 1
      fimse
   fimpara
fimpara

escreval()
escreval("O n?mero de dezenas encontradas s?o:", acertados)
escrevaL("------------------------------------------------------")

Fimalgoritmo