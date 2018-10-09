package models

type Detalle struct {
	IdFact   *Factura  `orm:"column(id_fact);rel(fk)"`
	IdPro    *Producto `orm:"column(id_pro);rel(fk)"`
	Cantidad float64   `orm:"column(cantidad);null"`
}
