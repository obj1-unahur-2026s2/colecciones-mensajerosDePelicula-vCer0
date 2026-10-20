import destinos.*


object roberto {
    var vehiculo = bicicleta
    var peso = 90
    method puedeLlamar() = false
    method Dinero() = 0
    method vehiculo() {
      return vehiculo
    }
    method peso() {
        return peso + vehiculo.peso()
    }
    method usarLaBicicleta() {
      vehiculo = bicicleta
    }
    method usarElCamion() {
      vehiculo = camion
    }   
    method cambiarPeso(unPeso) {
       peso = unPeso
    }


}
object camion {
  var cantAcoplados = 0
  method sumarUnAcoplado() {
    cantAcoplados += 1
  }
  method peso() {
    return cantAcoplados*500
  }
}

object bicicleta {
  method peso() {
    return 5
  }
}
object chuck {

  method peso() {
    return 80
  }
  method puedeLlamar() = true

}
object neo {
    var credito = true
    method peso() {
        return 0
    }
    method cargarCredito() {
        credito = true
    }
    method usarCredito() {
        credito = false
    }
    method puedeLlamar(){
        return credito
    }
}

object paquete {
  var pago = true
  method elPaqueteEstaPago() {
    return pago
  }
  method pagarPaquete() {
    pago = true
  }
  method noPagarElPaquete() {
    pago = false
  }
  
}


// Mensajeria

object empresaDeMensajeria {
    const mensajeros = []

    method nominaDeMensajeros() {
      return mensajeros
    }
    method contratarMensajero(unMensajero) {
      mensajeros.add(unMensajero)
    }
    method despedirMensajero(unMensajero) {
      mensajeros.remove(unMensajero)
    }
    method despedirATodosLosMensajeros() {
      mensajeros.clear()
    }
    method esUnaMensajeriaGrande() {
      return mensajeros.size()>2
    }
    method puedeSerEntregadoPorElPrimerMensajero(unDestino) {
        return unDestino.puedePasar(mensajeros.first())
    }
    method pesoDelUltimoMensajero() {
      return mensajeros.last().peso()
    }

}