------------------------------------------------------------
-- FarmGML ADE - DROP DATABASE STRUCTURE
------------------------------------------------------------

DROP TABLE IF EXISTS farm_traceability_info CASCADE;
DROP TABLE IF EXISTS farm_sustainability_metrics CASCADE;
DROP TABLE IF EXISTS farm_zarc_historico_cultivo CASCADE;
DROP TABLE IF EXISTS farm_zarc_monitoramento_satelite CASCADE;
DROP TABLE IF EXISTS farm_zarc_analise_solo CASCADE;

DROP TABLE IF EXISTS farm_input_used CASCADE;
DROP TABLE IF EXISTS farm_operation CASCADE;
DROP TABLE IF EXISTS farm_harvested_lot CASCADE;

DROP TABLE IF EXISTS farm_perennial_crop_area CASCADE;
DROP TABLE IF EXISTS farm_annual_crop_area CASCADE;
DROP TABLE IF EXISTS farm_livestock_enterprise CASCADE;

DROP TABLE IF EXISTS farm_rural_property CASCADE;

DROP SEQUENCE IF EXISTS farm_input_used_seq;
DROP SEQUENCE IF EXISTS farm_operation_seq;
DROP SEQUENCE IF EXISTS farm_harvested_lot_seq;
DROP SEQUENCE IF EXISTS farm_perennial_crop_area_seq;
DROP SEQUENCE IF EXISTS farm_annual_crop_area_seq;
DROP SEQUENCE IF EXISTS farm_livestock_enterprise_seq;
DROP SEQUENCE IF EXISTS farm_rural_property_seq;

DELETE FROM citydb.ade WHERE adeid = 'FarmGML_ADE';
