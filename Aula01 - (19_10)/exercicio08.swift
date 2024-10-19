// Exercício 8.1 - Classe Calculadora
class Calculadora{
  var numero1:Int;
  var numero2:Int;

  init(numero1:Int,numero2:Int){
    self.numero1 = numero1;
    self.numero2 = numero2;
  } 

  func soma() -> Int{
    return numero1 + numero2
  }

  func subtracao() -> Int{
    return numero1 - numero2
  }

  func multiplicacao() -> Int{
    return numero1 * numero2
  }

  func divisao() -> Int{
    return numero1 / numero2;
  }
}

var calculadora = Calculadora(numero1:10,numero2:5)
print("-------------- EXERCICIO 8.1 --------------")
print("RESULTADO DAS OPERAÇÕES BÁSICAS")
print("SOMA: ",calculadora.soma())
print("SUBTRAÇÃO: ",calculadora.subtracao())
print("MULTIPLICAÇÃO: ",calculadora.multiplicacao())
print("DIVISÃO: ",calculadora.divisao())


// Exercício 8.2 - Classe Restaurante

class Restaurante{
  var nome:String
  var tipoComida:String
  var numPedidos:Int

  init(nome:String,tipoComida:String){
    self.nome = nome
    self.tipoComida = tipoComida
    self.numPedidos = 0
  }

  func recebePedido(){
    numPedidos += 1
  }

  func calculaTotalPedidos()->Double{
    return Double(numPedidos) * 35.0;
  }
}

var restaurante = Restaurante(nome:"Restaurante do Zé",tipoComida:"Marmita")

restaurante.recebePedido()
restaurante.recebePedido()
restaurante.recebePedido()

print("-------------- EXERCICIO 8.2 --------------")
print("FECHAMENTO DE CAIXA RESTAURANTE \(restaurante.nome)")
print("Total de pedidos: \(restaurante.numPedidos)")
print("Total de vendas: R$ \(restaurante.calculaTotalPedidos())")

// Exercicio 8.3 - Classe retangulo
class Retangulo{
  var base:Int;
  var altura:Int;

  init(base:Int,altura:Int){
    self.base = base
    self.altura = altura
  }

  func calcularArea()->Int{
    return base * altura;
  }

  func calcularPerimetro()->Int{
    return 2 * (base + altura);
  }
}

var retangulo = Retangulo(base:10,altura:5)
print("-------------- EXERCICIO 8.3 --------------")
print("CÁLCULOS DO RETÂNGULO")
print("Base: \(retangulo.base)")
print("Altura: \(retangulo.altura)")
print("Área: \(retangulo.calcularArea())")
print("Perímetro: \(retangulo.calcularPerimetro())")

// Exercício 8.4 - Classe Empregado

class Empregado{
  var nome:String
  var salario:Double

  init(nome:String,salario:Double){
    self.nome = nome
    self.salario = salario
  }
}

class Gerente:Empregado{
  var departamento:String

  init(nome:String,salario:Double,departamento:String){
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }
}

var gerente = Gerente(nome:"Zé",salario:5000.0,departamento:"finanças")
print("-------------- EXERCICIO 8.4 --------------")
print("GERENTE")
print("Nome: \(gerente.nome)")
print("Salário: R$ \(gerente.salario)")
print("Departamento: \(gerente.departamento)")

// Exercício 8.5 - Classe Vendedor

class Vendedor:Empregado{
  func percentualComissao(nVendas:Int)->Double{
    let comissao = (Double(nVendas) * 50) * 0.10
    return salario + comissao
  }
}

var vendedor = Vendedor(nome:"Zé",salario:5000.0)
print("-------------- EXERCICIO 8.5 --------------")
print("VENDEDOR")
print("Nome: \(vendedor.nome)")
print("Salário: R$ \(vendedor.salario)")
var salarioFinal = vendedor.percentualComissao(nVendas:10)
print("Salário(Com comissão) R$ \(salarioFinal)")