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
    var empanadasVendidas = 0
    var sueldo = 0
    method vender(_empanadasVendidas) {
        empanadasVendidas = _empanadasVendidas
        sueldo = sueldo + (empanadasVendidas * 15)
    }

    method sueldo(){
        return sueldo
    }
}

object gimenez {
  var fondo = 300000
  method fondo() {
    return fondo
  }
  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
    
  }
}
