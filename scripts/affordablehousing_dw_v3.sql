CREATE SCHEMA IF NOT EXISTS "affordablehousing";

CREATE  TABLE "affordablehousing".dim_boroughtype ( 
	boroughtype_id       integer  NOT NULL  ,
	postcode             integer    ,
	community_board      integer    ,
	CONSTRAINT pk_borough PRIMARY KEY ( boroughtype_id )
 );

CREATE  TABLE "affordablehousing".dim_buildingtype ( 
	building_id          integer  NOT NULL  ,
	house_number         integer    ,
	street_name          varchar(100)    ,
	postcode             integer    ,
	latitude             varchar(100)    ,
	longitude            varchar(100)    ,
	reporting_construction_type varchar(100)    ,
	CONSTRAINT pk_dim_buildingtype PRIMARY KEY ( building_id )
 );

CREATE  TABLE "affordablehousing".dim_projecttype ( 
	project_id           integer  NOT NULL  ,
	project_name         varchar(100)    ,
	CONSTRAINT pk_project PRIMARY KEY ( project_id )
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
	project_id           integer    ,
	boroughtype_id       integer    ,
	building_id          integer  NOT NULL  ,
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

ALTER TABLE "affordablehousing".facts_housing ADD CONSTRAINT fk_facts_housing_dim_buildingtype FOREIGN KEY ( building_id ) REFERENCES "affordablehousing".dim_buildingtype( building_id );
