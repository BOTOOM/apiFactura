/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     09/10/2018 12:18:34 p. m.                    */
/*==============================================================*/


drop index CLIENTE_PK;

drop table CLIENTE;

drop index PRO_DET_FK;

drop index FACT_DET_FK;

drop table DETALLE;

drop index CLI_FAC_FK;

drop index FACTURA_PK;

drop table FACTURA;

drop index PRO_PRE_FK;

drop index PRECIO_PK;

drop table PRECIO;

drop index PRODUCTO_PK;

drop table PRODUCTO;

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLI               SERIAL               not null,
   NOMBRE               TEXT                 not null,
   constraint PK_CLIENTE primary key (ID_CLI)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
ID_CLI
);

/*==============================================================*/
/* Table: DETALLE                                               */
/*==============================================================*/
create table DETALLE (
   ID_FACT              INT4                 not null,
   ID_PRO               INT4                 not null,
   CANTIDAD             NUMERIC(3,0)         null,
   constraint PK_DETALLE primary key (ID_FACT, ID_PRO)
);

/*==============================================================*/
/* Index: FACT_DET_FK                                           */
/*==============================================================*/
create  index FACT_DET_FK on DETALLE (
ID_FACT
);

/*==============================================================*/
/* Index: PRO_DET_FK                                            */
/*==============================================================*/
create  index PRO_DET_FK on DETALLE (
ID_PRO
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   ID_FACT              SERIAL               not null,
   ID_CLI               INT4                 null,
   FECHA                DATE                 null,
   constraint PK_FACTURA primary key (ID_FACT)
);

/*==============================================================*/
/* Index: FACTURA_PK                                            */
/*==============================================================*/
create unique index FACTURA_PK on FACTURA (
ID_FACT
);

/*==============================================================*/
/* Index: CLI_FAC_FK                                            */
/*==============================================================*/
create  index CLI_FAC_FK on FACTURA (
ID_CLI
);

/*==============================================================*/
/* Table: PRECIO                                                */
/*==============================================================*/
create table PRECIO (
   ID_PRECIO            SERIAL               not null,
   ID_PRO               INT4                 null,
   PRECIO               NUMERIC(12,2)        not null,
   constraint PK_PRECIO primary key (ID_PRECIO)
);

/*==============================================================*/
/* Index: PRECIO_PK                                             */
/*==============================================================*/
create unique index PRECIO_PK on PRECIO (
ID_PRECIO
);

/*==============================================================*/
/* Index: PRO_PRE_FK                                            */
/*==============================================================*/
create  index PRO_PRE_FK on PRECIO (
ID_PRO
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   ID_PRO               SERIAL               not null,
   NOMBRE               TEXT                 not null,
   constraint PK_PRODUCTO primary key (ID_PRO)
);

/*==============================================================*/
/* Index: PRODUCTO_PK                                           */
/*==============================================================*/
create unique index PRODUCTO_PK on PRODUCTO (
ID_PRO
);

alter table DETALLE
   add constraint FK_DETALLE_FACT_DET_FACTURA foreign key (ID_FACT)
      references FACTURA (ID_FACT)
      on delete restrict on update restrict;

alter table DETALLE
   add constraint FK_DETALLE_PRO_DET_PRODUCTO foreign key (ID_PRO)
      references PRODUCTO (ID_PRO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_CLI_FAC_CLIENTE foreign key (ID_CLI)
      references CLIENTE (ID_CLI)
      on delete restrict on update restrict;

alter table PRECIO
   add constraint FK_PRECIO_PRO_PRE_PRODUCTO foreign key (ID_PRO)
      references PRODUCTO (ID_PRO)
      on delete restrict on update restrict;

