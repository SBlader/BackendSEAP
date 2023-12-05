const listVisita: Visita[] = [];
export class Visita {
    ID: number;
    RutResponsable: string;
    RutVecino: string;
    litros: number;
    comentario: string;
    folio: string;
    fecha: string;
    estado: string;
    clorado: number;
  constructor(visita: Visita) {
    this.ID = visita.ID;
    this.RutResponsable = visita.RutResponsable;
    this.RutVecino = visita.RutVecino;
    this.litros = visita.litros;
    this.comentario = visita.comentario;
    this.folio = visita.folio;
    this.fecha = visita.fecha;
    this.estado = visita.estado;
    this.clorado = visita.clorado;
  }
}
