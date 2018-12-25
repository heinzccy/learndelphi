/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2018/10/30 15:43:41                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('import') and o.name = 'FK_IMPORT_REFERENCE_USERS')
alter table import
   drop constraint FK_IMPORT_REFERENCE_USERS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('print_qr') and o.name = 'FK_PRINT_QR_REFERENCE_USERS')
alter table print_qr
   drop constraint FK_PRINT_QR_REFERENCE_USERS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('print_qr') and o.name = 'FK_PRINT_QR_REFERENCE_SUPPLIER')
alter table print_qr
   drop constraint FK_PRINT_QR_REFERENCE_SUPPLIER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('supplier') and o.name = 'FK_SUPPLIER_REFERENCE_USERS')
alter table supplier
   drop constraint FK_SUPPLIER_REFERENCE_USERS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('users') and o.name = 'FK_USERS_REFERENCE_SUPPLIER')
alter table users
   drop constraint FK_USERS_REFERENCE_SUPPLIER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('import')
            and   type = 'U')
   drop table import
go

if exists (select 1
            from  sysobjects
           where  id = object_id('print_qr')
            and   type = 'U')
   drop table print_qr
go

if exists (select 1
            from  sysobjects
           where  id = object_id('supplier')
            and   type = 'U')
   drop table supplier
go

if exists (select 1
            from  sysobjects
           where  id = object_id('users')
            and   type = 'U')
   drop table users
go

/*==============================================================*/
/* Table: import                                                */
/*==============================================================*/
create table import (
   reagentid            nvarchar(25)         null,
   lotno                nvarchar(25)         null,
   expire               date                 null,
   reagentname          nvarchar(50)         null,
   spec                 nvarchar(50)         null,
   cert                 nvarchar(50)         null,
   importuid            int                  null,
   importtime           timestamp            null,
   price                money                null,
   id                   uniqueidentifier     not null,
   constraint PK_IMPORT primary key (id)
)
go

/*==============================================================*/
/* Table: print_qr                                              */
/*==============================================================*/
create table print_qr (
   id                   uniqueidentifier     not null,
   imp_barcode          nvarchar(30)         not null,
   expire               date                 null,
   lotno                nvarchar(25)         null,
   addtime              timestamp            null,
   adduid               int                  null,
   supplyid             int                  null,
   reagentid            varchar(50)          null,
   isprint              bit                  not null,
   price                money                null,
   print_qr             varchar(30)          null,
   reagentname          nvarchar(50)         null,
   spec                 nvarchar(50)         null,
   cert                 nvarchar(50)         null,
   constraint PK_PRINT_QR primary key (id)
)
go

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
create table supplier (
   id                   int                  not null,
   supplyname           nvarchar(50)         null,
   rulebar              int                  null,
   prefix               varchar(3)           null,
   suffix               varchar(3)           null,
   adduid               int                  null,
   addtime              timestamp            null,
   constraint PK_SUPPLIER primary key (id)
)
go

/*==============================================================*/
/* Table: users                                                 */
/*==============================================================*/
create table users (
   id                   int                  not null,
   username             nvarchar(20)         null,
   supplyid             int                  null,
   addtime              timestamp            null,
   adduser              int                  null,
   isforbid             bit                  not null,
   password             nvarchar(20)         not null,
   constraint PK_USERS primary key (id)
)
go

alter table import
   add constraint FK_IMPORT_REFERENCE_USERS foreign key (importuid)
      references users (id)
go

alter table print_qr
   add constraint FK_PRINT_QR_REFERENCE_USERS foreign key (adduid)
      references users (id)
go

alter table print_qr
   add constraint FK_PRINT_QR_REFERENCE_SUPPLIER foreign key (supplyid)
      references supplier (id)
go

alter table supplier
   add constraint FK_SUPPLIER_REFERENCE_USERS foreign key (adduid)
      references users (id)
go

alter table users
   add constraint FK_USERS_REFERENCE_SUPPLIER foreign key (supplyid)
      references supplier (id)
go

