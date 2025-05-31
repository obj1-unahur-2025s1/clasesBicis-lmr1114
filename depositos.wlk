import bicis.*

class Deposito {
  const bicis = []
  method agregarBicis (listaDeBicis){
    if(listaDeBicis.any({b=>bicis.contains(b)})) {
      //self.error("no se puede agregar dos veces una bici al depósito")
      throw new Exception(message= "no se puede agregar dos veces una bici al depósito")

    }
    if(listaDeBicis.any({bici => listaDeBicis.occurrencesOf(bici) > 1})) {
      self.error("hay bicis duplicadas dentro de la lista de nuevas bicis")
    }

    bicis.addAll(listaDeBicis) //al poner una excepción no hace falta el else porque la excepción corta el código
  }
}

