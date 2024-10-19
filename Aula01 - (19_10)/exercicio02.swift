// Exercicio 2.1 - Validação de idade
print("Entre com sua idade:")
var idade = Int(readLine()!)!

switch idade{
  case (0...13):
    print("Criança")
  case (14...17):
    print("Adolescente")
  case (18...):
    print("Adulto")
  default:
    print("Idade inválida")
}

// Exercicio 2.2 - Controle de entrada festa
print("Digite a sua idade para entrada na festa:")
var idade_festa = Int(readLine()!)!
print("Está com o RG?")
print("1 - SIM | 2 - NÃO")
var rg = Int(readLine()!)!

if idade_festa >= 18 && rg == 1{
  print("Pode entrar")
}
else{
  print("Não pode entrar")
}
