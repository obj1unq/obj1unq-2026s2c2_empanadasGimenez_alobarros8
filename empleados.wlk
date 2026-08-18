//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var dinero = 0
  var deuda = 0
  method sueldo(_sueldo) {
    sueldo = _sueldo
   
  }
  method sueldo() {
    return sueldo
  }

  method gastar(cuanto){
    if (cuanto > dinero){
        deuda = deuda + (cuanto - dinero)
        dinero = 0
    }else{
        dinero = dinero - cuanto
        
    }
  }
  method pagarDeudas() {
    if (dinero >= deuda){
        dinero = dinero - deuda
        deuda = 0
    }else{
        deuda = deuda - dinero
        dinero = 0
    }
  }
  method dinero(_dinero) {
    dinero = _dinero
  }

  method dinero() {
    return dinero
  }
  method deuda() {
    return deuda
  }
}

object baigorria {
    var totalCobrado = 0
    var empanadasVendidas = 0
    var sueldo = 0
    method vender(_empanadasVendidas) {
        empanadasVendidas = empanadasVendidas + _empanadasVendidas
        sueldo = empanadasVendidas * 15
    }

    method sueldo(){
        return sueldo
    }
    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method totalCobrado(_totalCobrado) {
        totalCobrado = totalCobrado + _totalCobrado
    }
    method totalCobrado() {
        return totalCobrado
    }

    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = _empanadasVendidas
    }

}

object gimenez {
  var fondo = 300000
  method fondo() {
    return fondo
  }
  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
    if (empleado == baigorria){
        empleado.totalCobrado(empleado.sueldo())
        empleado.empanadasVendidas(0)
        empleado.sueldo(0)
    }else if (empleado == galvan){
        empleado.dinero(empleado.dinero() + empleado.sueldo())
        empleado.pagarDeudas()
    }
  }
}
