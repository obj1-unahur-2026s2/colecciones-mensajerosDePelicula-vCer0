import mensajeros.*

object puenteBrooklyn {
  method puedePasar(unMensajero) {
    return unMensajero.peso() <= 1000 && paquete.elPaqueteEstaPago()
  }
}
object matrix {
  method puedePasar(unMensajero) {
    return unMensajero.puedeLlamar() && paquete.elPaqueteEstaPago()
  }
}