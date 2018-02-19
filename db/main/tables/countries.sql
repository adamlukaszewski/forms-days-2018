CREATE TABLE "COUNTRIES" 
   (	"COUNTRY_ID" CHAR(2) CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE, 
	"COUNTRY_NAME" VARCHAR2(40), 
	"REGION_ID" NUMBER, 
	 CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS ;
ALTER TABLE "COUNTRIES" ADD CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "REGIONS" ("REGION_ID") ENABLE;
   COMMENT ON COLUMN "COUNTRIES"."COUNTRY_ID" IS 'Primary key of countries table.';
   COMMENT ON COLUMN "COUNTRIES"."COUNTRY_NAME" IS 'Country name';
   COMMENT ON COLUMN "COUNTRIES"."REGION_ID" IS 'Region ID for the country. Foreign key to region_id column in the departments table.';
   COMMENT ON TABLE "COUNTRIES"  IS 'country table. Contains 25 rows. References with locations table.';
CREATE UNIQUE INDEX "COUNTRY_C_ID_PK" ON "COUNTRIES" ("COUNTRY_ID") 
  ;
