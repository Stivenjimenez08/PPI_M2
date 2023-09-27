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
