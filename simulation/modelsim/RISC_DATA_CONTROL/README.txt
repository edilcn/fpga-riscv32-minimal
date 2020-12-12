- Notas de simulação:

Foi utilizado um programa feito por mim para teste, o nome é CTRLDATA.s
Nesse programa implementa hazards e também algumas verificações de branch e jal.

Corrigi um bug que a versão anterior tinha, na qual o primeiro pulso de clock estava adiantado,
e por consequência quebrava toda a pipeline. Ainda estou tendo dificuldade de implementar a InstMEM,
que faz a parte da memória de instruções. Minha maior dificuldade é em conseguir ler um .bin e
criar uma imagem dele na ROM.