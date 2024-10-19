//Exercicio 1.1 - Média de nota
print("Digite a primeira nota:")
var nota1 = Int(readLine()!)!
print("Digite a segunda nota:")
var nota2 = Int(readLine()!)!
print("Digite a terceira nota:")
var nota3 = Int(readLine()!)!

var media = (nota1 + nota2 + nota3) / 3

print("A média é: \(media)")

//Exercicio 1.2 - Conversão de temperatura
print("Digite a temperatura:")
var tempCelsius = Int(readLine()!)!

var tempFahrenheit = (tempCelsius * 9 / 5) + 32

print("A temperatura em Fahrenheit é: \(tempFahrenheit)")
