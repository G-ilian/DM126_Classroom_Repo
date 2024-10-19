// Exercicio 4.1 - Número primos
func eh_primo(number: Int) -> Bool{
  if number < 2 {
      return false
  }
  for i in 2..<number {
    if number % i == 0 {
        return false
    }
  }
  return true
}

let result = eh_primo(number: 2)
let result2 = eh_primo(number: 10) 

print(result)
print(result2)

// Exercicio 4.2 - Restaurante
func calcula_valor_conta(valor_conta: Double, n_amigos: Int, taxa_garcom: Double) -> Double {
  let valorTotal = valor_conta + (valor_conta * taxa_garcom)
  let valorPorPessoa = valorTotal / Double(n_amigos)

  return valorPorPessoa
}

let resultado_conta = calcula_valor_conta(valor_conta: 100.0, n_amigos: 3, taxa_garcom: 0.1)
print(resultado_conta)