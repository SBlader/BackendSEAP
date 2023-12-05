const listVecinos: Vecino[] = [];
export class Vecino {
  PK_Rut: string;
  grupo_familiar: number;
  referencia: string;
  nombre: string;
  telefono: number;
  fsh: number;
  activo: boolean;
  litros: number;
  propiedad_estanque: string;
  coordenadas: string;
  FK_IDArea: number;
  constructor(vecino: Vecino) {
    this.PK_Rut = vecino.PK_Rut;
    this.grupo_familiar = vecino.grupo_familiar;
    this.referencia = vecino.referencia;
    this.nombre = vecino.nombre;
    this.telefono = vecino.telefono;
    this.fsh = vecino.fsh;
    this.activo = vecino.activo;
    this.litros = vecino.litros;
    this.propiedad_estanque = vecino.propiedad_estanque;
    this.coordenadas = vecino.coordenadas;
    this.FK_IDArea = vecino.FK_IDArea;
  }
}
