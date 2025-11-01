<?xml version="1.0" encoding="UTF-8"?>
<core:CityModel
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:luse="http://www.opengis.net/citygml/landuse/3.0"
    xmlns:bldg="http://www.opengis.net/citygml/building/3.0"
    xmlns:veg="http://www.opengis.net/citygml/vegetation/3.0"
    xmlns:gen="http://www.opengis.net/citygml/generics/3.0"
    xmlns:dyn="http://www.opengis.net/citygml/dynamizer/3.0"
    xmlns:vers="http://www.opengis.net/citygml/versioning/3.0"
    xmlns:farm="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    
    xsi:schemaLocation="
        https://igorquintao.github.io/FarmGML-ADE/schemas/1.3 https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/FarmGML.xsd
        http://www.opengis.net/citygml/3.0 http://schemas.opengis.net/citygml/3.0/core.xsd
        http://www.opengis.net/citygml/landuse/3.0 http://schemas.opengis.net/citygml/3.0/landUse.xsd
        http://www.opengis.net/citygml/vegetation/3.0 http://schemas.opengis.net/citygml/3.0/vegetation.xsd
        http://www.opengis.net/citygml/building/3.0 http://schemas.opengis.net/citygml/3.0/building.xsd
        http://www.opengis.net/citygml/generics/3.0 http://schemas.opengis.net/citygml/3.0/generics.xsd
        http://www.opengis.net/citygml/dynamizer/3.0 http://schemas.opengis.net/citygml/3.0/dynamizer.xsd
        http://www.opengis.net/citygml/versioning/3.0 http://schemas.opengis.net/citygml/3.0/versioning.xsd
        http://www.opengis.net/gml/3.2 http://schemas.opengis.net/gml/3.2.1/gml.xsd
        http://www.w3.org/1999/xlink http://www.w3.org/1999/xlink.xsd"
    gml:id="FarmModel_001">

  <core:cityObjectMember>
    <farm:RuralProperty>
      <gml:name>Fazenda Modelo 2025</gml:name>
      <farm:holderID>CPF-12345678900</farm:holderID>
      <farm:officialID>INCRA-88990077</farm:officialID>
      <farm:carCode>MG-0123456-7890</farm:carCode>
      <farm:ibgeCode>3145007</farm:ibgeCode>
      <farm:keepsRecords>true</farm:keepsRecords>
      <farm:farmProfile>
        <farm:legalStatus>juridicalPerson</farm:legalStatus>
        <farm:marketIntegration>mainlyForSale</farm:marketIntegration>
      </farm:farmProfile>
      <farm:farmSize>
        <farm:physicalSizeAAU uom="ha">50.0</farm:physicalSizeAAU>
      </farm:farmSize>

      <core:genericAttribute>
        <farm:insuranceRisk>
            <farm:zarcScore>78</farm:zarcScore>
            <farm:calculationDate>2025-10-20T00:00:00Z</farm:calculationDate>
            <farm:riskClassificationKey>ZARC2025_MG_SOY</farm:riskClassificationKey>
        </farm:insuranceRisk>
      </core:genericAttribute>
      <core:genericAttribute>
        <farm:sustainability>
            <farm:carbonFootprint uom="kgCO2e/ha">950.0</farm:carbonFootprint>
        </farm:sustainability>
      </core:genericAttribute>

    </farm:RuralProperty>
  </core:cityObjectMember>

  <core:cityObjectMember>
    <farm:AnnualCropArea>
        <gml:name>Talhão de Soja</gml:name>
        <farm:cropName>Soja</farm:cropName>
        <farm:cropCode codeSpace="https://agrovoc.fao.org/">SOY</farm:cropCode>
        <farm:plantingDate>2025-11-01</farm:plantingDate>
        <farm:isIrrigated>true</farm:isIrrigated>
        <farm:lod0Geometry>
            <gml:Polygon gml:id="geom_soy_2025" srsName="urn:ogc:def:crs:EPSG::31983">
              <gml:exterior>
                <gml:LinearRing gml:id="lr_soy_2025">
                  <gml:posList>
                    721128.1164901648	7702296.049924363	0
                    721128.1164901648	7701296.049924363	0
                    722128.1164901648	7701296.049924363	0
                    722128.1164901648	7702296.049924363	0
                    721128.1164901648	7702296.049924363	0
                  </gml:posList>
                </gml:LinearRing>
              </gml:exterior>
            </gml:Polygon>
        </farm:lod0Geometry>
        <farm:producesLot>
            <farm:HarvestedLot gml:id="harvest_2025_001">
              <farm:quantityHarvested uom="t">145.0</farm:quantityHarvested>
              <farm:harvestDate>2026-03-10</farm:harvestDate>
            </farm:HarvestedLot>
        </farm:producesLot>
    </farm:AnnualCropArea>
  </core:cityObjectMember>

</core:CityModel>
