CREATE SCHEMA IF NOT EXISTS "instance";

CREATE  TABLE "instance".dim_boroughtype ( 
	boroughtype_id       integer  NOT NULL  ,
	borough_name         varchar(100)    ,
	CONSTRAINT pk_borough PRIMARY KEY ( boroughtype_id )
 );

CREATE  TABLE "instance".dim_buildingtype ( 
	buildingtype_id      integer  NOT NULL  ,
	house_number         integer    ,
	street_name          varchar(100)    ,
	postcode             integer    ,
	latitude             varchar(100)    ,
	longitude            varchar(100)    ,
	reporting_construction_type varchar(100)    ,
	building_id          integer    ,
	CONSTRAINT pk_buildingtype_id UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_buildingtype_id_001 UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_buildingtype_id_002 UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_buildingtype_id_003 UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_dim_buildingtype PRIMARY KEY ( buildingtype_id )
 );

CREATE  TABLE "instance".dim_projecttype ( 
	projecttype_id       integer  NOT NULL  ,
	project_name         varchar(100)    ,
	project_id           integer    ,
	CONSTRAINT pk_project PRIMARY KEY ( projecttype_id )
 );

CREATE  TABLE "instance".entity ( 
 );

CREATE  TABLE "instance".facts_housing ( 
	fact_id              integer  NOT NULL  ,
	extremely_low_income_units integer    ,
	very_low_income_units integer    ,
	low_income_units     integer    ,
	moderate_income_units integer    ,
	middle_income_units  integer    ,
	counted_rental_units integer    ,
	counted_homeownership_units integer    ,
	all_counted_units    integer    ,
	total_units          integer    ,
	projecttype_id       integer    ,
	building_unitstype_id integer    ,
	buildingtype_id      integer    ,
	boroughtype_id       integer    ,
	studio_units         integer    ,
	"1_br_units"         integer    ,
	"2_br_units"         integer    ,
	"3_br_units"         integer    ,
	"4_br_units"         integer    ,
	"5_br_units"         integer    ,
	"6_br_units"         integer    ,
	total_low_income_units integer    ,
	total_non_low_income_units integer    ,
	CONSTRAINT pk_fact PRIMARY KEY ( fact_id )
 );
