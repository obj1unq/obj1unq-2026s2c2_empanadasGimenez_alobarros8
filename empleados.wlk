//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  method sueldo(_sueldo) {
    sueldo = _sueldo
   
  }
  method sueldo() {
    return sueldo
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
    }
  }
}
