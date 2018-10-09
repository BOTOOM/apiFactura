insert into cliente (nombre)  values ('Edwar'), ('Cristian');

insert into producto (nombre)  values ('queso'), ('azucar'), ('arroz'), ('carne'), ('dulces');

insert into precio (id_pro, precio) values (1, 2500), (2,1200), (3, 1400), (4, 5500), (5, 4000);


insert into factura (id_cli, fecha) values (1,'2018-10-05'); --fact 1

insert into factura (id_cli, fecha) values (1,'2018-10-07');  --fact 2

insert into factura (id_cli, fecha) values (2,'2018-09-15');  --fact 3

insert into factura (id_cli, fecha) values (2,'2018-10-08');  --fact 4


-- facturas

insert into detalle (id_fact,id_pro,cantidad) values (1,1,3),(1,2,4),(1,3,6),(1,4,4),(1,5,7);
insert into detalle (id_fact,id_pro,cantidad) values (2,1,4),(2,2,2),(2,3,8),(2,4,9),(1,5,0);
insert into detalle (id_fact,id_pro,cantidad) values (3,1,10),(3,2,5),(3,3,13),(3,4,4),(3,5,1);
insert into detalle (id_fact,id_pro,cantidad) values (4,1,3),(4,2,4),(4,3,6),(4,4,4),(4,5,7);
