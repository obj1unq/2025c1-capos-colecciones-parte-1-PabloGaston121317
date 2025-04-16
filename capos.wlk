
object rolando{
 const artefactos = #{}
 var capacidad = 2
 var vivienda = castillo 
 const historial = []

 method encuentra(artefacto){
    if(self.puedeLevantar()){
        artefactos.add(artefacto)
    }
    historial.add(artefacto)

 }

 method irAVivienda(){
    vivienda.depositar(artefactos)
    artefactos.clear()
 }

 method historial() = historial

 method posee(artefacto) = self.items().contains(artefacto)

 method items() = vivienda.baul() + artefactos

 method puedeLevantar() = artefactos.size() < capacidad

 method capacidad (_capacidad){

    capacidad = _capacidad
 }

 method artefactos() = artefactos
}

object castillo{
    const baul = #{}

    method depositar(artefactos){
        baul.addAll(artefactos)
    }

    method baul() = baul
}

object espada{}

object libro{}

object collar {}

object armadura{}