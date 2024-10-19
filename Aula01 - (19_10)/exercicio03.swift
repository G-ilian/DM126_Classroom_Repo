// Exercicio 3.1 - Valores par
for i in 1...10{
  if i % 2 == 0{
    print(i)
  }
}

// Exercício 3.2 - Adivinhação de números
let valorInteiro = Int.random(in: 1...100)
var tentativas = 0
var acertou = false

print("Tente adivinhar o número (entre 1 e 100):")
while !acertou{
  tentativas+=1
  print("Chute um número: ")
  let chute = Int(readLine()!)!

  if chute > valorInteiro{
    print("Chutou alto")
  }else if(chute<valorInteiro){
    print("Chutou baixo")
  }else{
    print("Acertou! O número era \(valorInteiro).")
    print("Acertou em \(tentativas) tentativas")
    acertou = true
  }
}