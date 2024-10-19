// Exercicio 6.1 - Array de notas

func calcula_media(notas: [Int]) -> Double{
  var soma = 0
  let quantidadeElementos = notas.count
  for nota in notas{
    soma += nota
  }
  return Double(soma) / Double(quantidadeElementos)
}

var notas = [10, 9, 8, 7, 6, 5, 4, 3, 2]

var media = calcula_media(notas: notas)
print("A média é: \(media)")

// Exercicio 6.2 - Conjunto
func agrupa_conjunto(conjunto:[Int]){
  var conjunto_pares = [Int]()
  var conjunto_impares = [Int]()

  for numero in conjunto{
    if numero % 2 == 0{
      conjunto_pares.append(numero)
    }else{
      conjunto_impares.append(numero)
    }
  }
  print("Conjunto de pares: \(conjunto_pares)")
  print("Conjunto de ímpares: \(conjunto_impares)")
}

var conjunto_random = [Int]()

for _ in 1...10 {
    conjunto_random.append(Int.random(in: 1..<100))
}

agrupa_conjunto(conjunto: conjunto_random)

// Exercicio 6.3 - Exibição de nome de estados
let estados: [String: String] = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo",
    "GO": "Goiás",
    "MA": "Maranhão",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Pará",
    "PB": "Paraíba",
    "PR": "Paraná",
    "PE": "Pernambuco",
    "PI": "Piauí",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondônia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]

func exibeComMaisDe7Letras(_estados:[String: String]){
  for (sigla, nome) in estados{
    if nome.count > 7{
      print("Sigla: \(sigla) - Nome: \(nome)")
    }
  }
}

exibeComMaisDe7Letras(estados: estados)
