------------------------------------------------------------
-- FarmGML ADE - CREATE DATABASE STRUCTURE
-- Compatible with 3DCityDB 4.4.x
-- Author: Eng. Igor Quintão
------------------------------------------------------------

------------------------------------------------------------
-- 1. Registrar a ADE no catálogo do 3DCityDB
------------------------------------------------------------
INSERT INTO citydb.ade (id, adeid, version, description)
VALUES (10001, 'FarmGML_ADE', '1.3', 'Farm Management ADE for agricultural/rural properties')
ON CONFLICT DO NOTHING;


------------------------------------------------------------
-- 2. Criar SEQUENCES para IDs das entidades ADE
------------------------------------------------------------
CREATE SEQUENCE farm_rural_property_seq START 1;
CREATE SEQUENCE farm_livestock_enterprise_seq START 1;
CREATE SEQUENCE farm_annual_crop_area_seq START 1;
CREATE SEQUENCE farm_perennial_crop_area_seq START 1;
CREATE SEQUENCE farm_harvested_lot_seq START 1;
CREATE SEQUENCE farm_operation_seq START 1;
CREATE SEQUENCE farm_input_used_seq START 1;

------------------------------------------------------------
-- 3. TABELA farm_rural_property (extends LandUse)
------------------------------------------------------------
CREATE TABLE farm_rural_property (
    id INTEGER PRIMARY KEY DEFAULT nextval('farm_rural_property_seq'),
    landuse_id INTEGER NOT NULL,
    name VARCHAR(1000),
    holder_id VARCHAR(255),
    car_code VARCHAR(255),
    ibge_code VARCHAR(10),

    legal_status VARCHAR(50),
    market_integration VARCHAR(50),
    commodity_specialization VARCHAR(50),
    producer_type VARCHAR(50),

    physical_size_aau DOUBLE PRECISION,
    physical_size_aau_uom VARCHAR(20),

    total_agri_output DOUBLE PRECISION,
    total_agri_output_uom VARCHAR(20),

    lod0_geometry_id INTEGER,
    lod1_geometry_id INTEGER,

    CONSTRAINT farm_rural_property_fk1
        FOREIGN KEY (landuse_id)
        REFERENCES citydb.land_use(id)
        ON DELETE CASCADE
);

------------------------------------------------------------
-- 4. LivestockEnterprise
------------------------------------------------------------
CREATE TABLE farm_livestock_enterprise (
    id INTEGER PRIMARY KEY DEFAULT nextval('farm_livestock_enterprise_seq'),
    cityobject_id INTEGER NOT NULL,

    occupied_area DOUBLE PRECISION,
    occupied_area_uom VARCHAR(20),
    start_date DATE,
    livestock_type VARCHAR(100),
    livestock_type_codespace VARCHAR(1000),
    livestock_category VARCHAR(100),
    feeding_practice VARCHAR(100),

    CONSTRAINT farm_livestock_fk
        FOREIGN KEY (cityobject_id)
        REFERENCES citydb.cityobject(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 5. AnnualCropArea (extends PlantCover)
------------------------------------------------------------
CREATE TABLE farm_annual_crop_area (
    id INTEGER PRIMARY KEY DEFAULT nextval('farm_annual_crop_area_seq'),
    plantcover_id INTEGER NOT NULL,

    crop_name VARCHAR(255),
    crop_code VARCHAR(100),
    crop_code_space VARCHAR(1000),
    producer_type VARCHAR(50),

    lod0_geometry_id INTEGER,

    CONSTRAINT farm_annual_crop_fk
        FOREIGN KEY (plantcover_id)
        REFERENCES citydb.plant_cover(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 6. PerennialCropArea (extends PlantCover)
------------------------------------------------------------
CREATE TABLE farm_perennial_crop_area (
    id INTEGER PRIMARY KEY DEFAULT nextval('farm_perennial_crop_area_seq'),
    plantcover_id INTEGER NOT NULL,

    crop_name VARCHAR(255),
    crop_code VARCHAR(100),
    crop_code_space VARCHAR(1000),
    producer_type VARCHAR(50),

    lod0_geometry_id INTEGER,

    CONSTRAINT farm_perennial_crop_fk
        FOREIGN KEY (plantcover_id)
        REFERENCES citydb.plant_cover(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 7. HarvestedLot (extends AbstractFeatureWithLifespanType)
------------------------------------------------------------
CREATE TABLE farm_harvested_lot (
    id INTEGER PRIMARY KEY DEFAULT nextval('farm_harvested_lot_seq'),
    cityobject_id INTEGER NOT NULL,

    quantity_harvested DOUBLE PRECISION,
    quantity_harvested_uom VARCHAR(20),
    harvest_date DATE,

    CONSTRAINT farm_harvested_lot_fk
        FOREIGN KEY (cityobject_id)
        REFERENCES citydb.cityobject(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 8. AgriculturalOperation (extends AbstractDynamizer)
------------------------------------------------------------
CREATE TABLE farm_operation (
    id INTEGER PRIMARY KEY DEFAULT nextval('farm_operation_seq'),
    dynamizer_id INTEGER NOT NULL,

    operation_type VARCHAR(100),
    operation_type_codespace VARCHAR(1000),
    area_affected DOUBLE PRECISION,
    area_affected_uom VARCHAR(20),

    CONSTRAINT farm_operation_fk
        FOREIGN KEY (dynamizer_id)
        REFERENCES citydb.dynamizer(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 9. InputUsed (sub-elemento de farm_operation)
------------------------------------------------------------
CREATE TABLE farm_input_used (
    id INTEGER PRIMARY KEY DEFAULT nextval('farm_input_used_seq'),
    operation_id INTEGER NOT NULL,

    input_type VARCHAR(100),

    CONSTRAINT farm_input_used_fk
        FOREIGN KEY (operation_id) REFERENCES farm_operation(id) ON DELETE CASCADE
);



------------------------------------------------------------
-- 10. ZARC Tables: Soil Analysis
------------------------------------------------------------
CREATE TABLE farm_zarc_analise_solo (
    id INTEGER PRIMARY KEY,
    cityobject_id INTEGER NOT NULL,

    ph DOUBLE PRECISION,
    organic_matter DOUBLE PRECISION,
    soil_texture VARCHAR(100),

    CONSTRAINT farm_zarc_solo_fk
        FOREIGN KEY (cityobject_id) REFERENCES citydb.cityobject(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 11. ZARC: Satellite Monitoring
------------------------------------------------------------
CREATE TABLE farm_zarc_monitoramento_satelite (
    id INTEGER PRIMARY KEY,
    cityobject_id INTEGER NOT NULL,

    sensor_name VARCHAR(255),
    acquisition_date DATE,
    ndvi_mean DOUBLE PRECISION,

    CONSTRAINT farm_zarc_sat_fk
        FOREIGN KEY (cityobject_id) REFERENCES citydb.cityobject(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 12. ZARC: Cultivation History
------------------------------------------------------------
CREATE TABLE farm_zarc_historico_cultivo (
    id INTEGER PRIMARY KEY,
    cityobject_id INTEGER NOT NULL,

    crop_name VARCHAR(255),
    season VARCHAR(50),
    production_value DOUBLE PRECISION,

    CONSTRAINT farm_zarc_hist_fk
        FOREIGN KEY (cityobject_id) REFERENCES citydb.cityobject(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 13. Sustainability Metrics
------------------------------------------------------------
CREATE TABLE farm_sustainability_metrics (
    id INTEGER PRIMARY KEY,
    cityobject_id INTEGER NOT NULL,

    carbon_footprint DOUBLE PRECISION,
    water_use_efficiency DOUBLE PRECISION,
    energy_balance DOUBLE PRECISION,

    CONSTRAINT farm_sust_fk
        FOREIGN KEY (cityobject_id) REFERENCES citydb.cityobject(id) ON DELETE CASCADE
);


------------------------------------------------------------
-- 14. Traceability Info
------------------------------------------------------------
CREATE TABLE farm_traceability_info (
    id INTEGER PRIMARY KEY,
    cityobject_id INTEGER NOT NULL,

    lot_id VARCHAR(255),
    blockchain_hash VARCHAR(255),
    harvest_date DATE,

    CONSTRAINT farm_trace_fk
        FOREIGN KEY (cityobject_id) REFERENCES citydb.cityobject(id) ON DELETE CASCADE
);

