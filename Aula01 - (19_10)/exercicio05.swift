// Exercicio 5.1
func exibeNome(nome:String?){
  if let nomeValido = nome {
    print("Nome: \(nomeValido)")
  } else {
    print("Nome não especificado!!")
  }
}

exibeNome(nome:nil)
exibeNome(nome:"Gabriel")