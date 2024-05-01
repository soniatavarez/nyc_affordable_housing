CREATE SCHEMA IF NOT EXISTS "affordablehousing";

CREATE  TABLE "affordablehousing".dim_borough_block_lottype ( 
	borough_block_lottype_id integer  NOT NULL  ,
	"latitude(internal)" varchar(100)    ,
	"longitude(internal)" varchar(100)    ,
	CONSTRAINT pk_borough_block_lot PRIMARY KEY ( borough_block_lottype_id )
 );

CREATE  TABLE "affordablehousing".dim_boroughtype ( 
	boroughtype_id       integer  NOT NULL  ,
	borough_name         varchar(100)    ,
	CONSTRAINT pk_borough PRIMARY KEY ( boroughtype_id )
 );

CREATE  TABLE "affordablehousing".dim_building_unitstype ( 
	building_unitstype_id integer  NOT NULL  ,
	studio_units         integer    ,
	"1_br_units"         integer    ,
	"2_br_units"         integer    ,
	"3_br_units"         integer    ,
	"4_br_units"         integer    ,
	"5_br_units"         integer    ,
	"6_br_units"         integer    ,
	unknown_br_units     integer    ,
	total_units          integer    ,
	other_units          integer    ,
	CONSTRAINT pk_building_units PRIMARY KEY ( building_unitstype_id )
 );

CREATE  TABLE "affordablehousing".dim_buildingtype ( 
	building_id          integer    ,
	buildingtype_id      integer  NOT NULL  ,
	house_number         integer    ,
	street_name          varchar(100)    ,
	bin                  integer    ,
	postcode             integer    ,
	nta                  varchar(100)    ,
	latitude             varchar(100)    ,
	longitude            varchar(100)    ,
	reporting_construction_type varchar(100)    ,
	community_board      integer    ,
	CONSTRAINT pk_buildingtype_id UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_buildingtype_id_001 UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_buildingtype_id_002 UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_buildingtype_id_003 UNIQUE ( buildingtype_id ) ,
	CONSTRAINT pk_dim_buildingtype PRIMARY KEY ( buildingtype_id )
 );

CREATE  TABLE "affordablehousing".dim_projecttype ( 
	projecttype_id       integer  NOT NULL  ,
	project_name         varchar(100)    ,
	extended_affordability_only varchar(100)    ,
	prevailing_wage_status varchar(100)    ,
	CONSTRAINT pk_project PRIMARY KEY ( projecttype_id )
 );

CREATE  TABLE "affordablehousing".entity ( 
 );

CREATE  TABLE "affordablehousing".facts_housing ( 
	fact_id              integer  NOT NULL  ,
	"extremely_low-income_units" integer    ,
	"very_low-income_units" integer    ,
	low_income_units     integer    ,
	moderate_income_units integer    ,
	middle_income_units  integer    ,
	counted_rental_units integer    ,
	counted_homeownership_units integer    ,
	all_counted_units    integer    ,
	total_units          integer    ,
	projecttype_id       integer    ,
	borough_block_lottype_id integer    ,
	building_unitstype_id integer    ,
	buildingtype_id      integer    ,
	boroughtype_id       integer    ,
	CONSTRAINT pk_fact PRIMARY KEY ( fact_id )
 );
