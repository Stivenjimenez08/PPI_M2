//TipoS DE COMBUSTIBLE    -Jet A-1  (turbina)      -JET B Aviones militares  -Avgas Aviones con motores de piston
//TipoS DE AVIONES      - Comerciales  -Carga           -Militares                -Ligeros(piston)
//Cantidad motores        -1 a 4       -4 a 6             - 1 a 2                       -1 a 2 

class Aviones{

    constructor(Tipo, motores, combustible){
        this.Tipo=Tipo;
        this.motores=motores;
        this.combustible=combustible;
    }

    get Clase(){
        return this.clase();
    }

    get Gasolina(){
        return this.gasolina();
    }

   
    clase(){ 
        return 'El avion tipo ' + this.Tipo + ' tiene ' + this.motores + ' motores';
    }

    gasolina(){
        return 'El avion usa combustible ' + this.combustible;
    }

}

const avion01 = new Aviones('militar',2,'Jet B');
console.log(avion01.Clase)
console.log(avion01.Gasolina)

class comerciales extends Aviones{

    constructor(Tipo,motores,aerolinea, pasajeros){
        super(Tipo,motores)
        this.aerolinea=aerolinea;
        this.pasajeros=pasajeros;
    }
    
    get Tripulantes(){
        return this.tripulantes();
    }

    tripulantes(){
        return 'El avion tipo ' + this.Tipo + ' con ' + this.motores + ' motores soporta ' + this.pasajeros + ' pasajeros'
    }

    clase(){
        return 'El avion de tipo ' + this.Tipo + ' pertenece a la aerolinea ' + this.aerolinea
    }

}

const avion02 = new comerciales('comercial',3,'Ultra Air','300');
console.log(avion02.Clase)
console.log(avion02.Tripulantes)

class carga extends comerciales{

    constructor(Tipo,aerolinea,carga){
        super(Tipo,aerolinea)
        this.carga=carga;
    }

    get Capacidad(){ 
        return this.capacidad();
    }

    capacidad(){
        return 'El avion de ' + this.Tipo + ' soporta ' + this.carga + ' toneladas de carga'
    }

    tripulantes(){
        return 'El avion de ' + this.Tipo + ' no lleva tripulantes ' 
    }

}

const avion03 = new carga('carga','DHL','200');
console.log(avion03.Capacidad)
console.log(avion03.Tripulantes)

class militar extends Aviones{

    constructor(Tipo,variacion,uso){
        super(Tipo)
        this.variacion=variacion
        this.uso=uso
    }

    get Combate(){
        return this.combate();
    }

    combate(){
        return 'El avion ' + this.Tipo + ' es un ' + this.variacion;
    }

    clase(){
        return 'El avion ' + this.Tipo + ' se usa en ' + this.uso;
    }

}

const avion04 = new militar('militar','bombardero','combate');
console.log(avion04.Clase)
console.log(avion04.Combate)
