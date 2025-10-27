<?xml version="1.0" encoding="UTF-8"?>
<core:CityModel
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:luse="http://www.opengis.net/citygml/landuse/3.0"
    xmlns:bldg="http://www.opengis.net/citygml/building/3.0"
    xmlns:veg="http://www.opengis.net/citygml/vegetation/3.0"
    xmlns:farm="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="
      http://www.opengis.net/citygml/3.0 http://schemas.opengis.net/citygml/3.0/cityGMLBase.xsd
      https://igorquintao.github.io/FarmGML-ADE/schemas/1.3 https://raw.githubusercontent.com/IgorQuintao/FarmGML-ADE/main/schemas/1.3/FarmGML.xsd"
    gml:id="FarmModel_001">

  <core:cityObjectMember>
    <farm:RuralProperty gml:id="farm_RP_001">
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
        <farm:economicSize>
            <farm:totalAgriculturalOutput uom="BRL">850000</farm:totalAgriculturalOutput>
            <farm:cropOutput uom="BRL">620000</farm:cropOutput>
            <farm:livestockOutput uom="BRL">230000</farm:livestockOutput>
        </farm:economicSize>
      </farm:farmSize>

      <farm:cropArea>
        <farm:AnnualCropArea gml:id="farm_crop_soy_2025">
          <farm:cropName>Soja</farm:cropName>
          <farm:cropCode codeSpace="https://agrovoc.fao.org/">SOY</farm:cropCode>
          <farm:plantingDate>2025-11-01</farm:plantingDate>
          <farm:isIrrigated>true</farm:isIrrigated>
          <farm:seedVarietyType codeSpace="https://embrapa.br/seeds">BRS 1010IPRO</farm:seedVarietyType>
          <farm:expectedHarvestsPerCycle>1</farm:expectedHarvestsPerCycle>

          <gml:boundedBy>
            <gml:Envelope srsName="urn:ogc:def:crs:EPSG::4326">
              <gml:lowerCorner>-43.950 -19.980</gml:lowerCorner>
              <gml:upperCorner>-43.940 -19.970</gml:upperCorner>
            </gml:Envelope>
          </gml:boundedBy>
          
          <farm:lod0Geometry>
            <gml:Polygon srsName="urn:ogc:def:crs:EPSG::31983">
              <gml:exterior>
                <gml:LinearRing>
                  <gml:posList>
                    2508935 4819799 0
                    2509935 4819799 0
                    2509935 4820799 0
                    2508935 4820799 0
                    2508935 4819799 0
                  </gml:posList>
                </gml:LinearRing>
              </gml:exterior>
            </gml:Polygon>
          </farm:lod0Geometry>

          <farm:producesLot>
            <farm:HarvestedLot gml:id="harvest_2025_001">
              <farm:quantityHarvested uom="t">145.0</farm:quantityHarvested>
              <farm:harvestDate>2026-03-10</farm:harvestDate>
              <farm:quantitySold uom="t">120.0</farm:quantitySold>
              <farm:traceabilityInfo>
                  <farm:lotID>SOY-2025-001</farm:lotID>
                  <farm:blockchainHash>0xAF23BEE197C9D0FA91</farm:blockchainHash>
              </farm:traceabilityInfo>
            </farm:HarvestedLot>
          </farm:producesLot>

        </farm:AnnualCropArea>
      </farm:cropArea>

      <core:genericApplicationPropertyOfRuralProperty>
        <farm:insuranceRisk>
            <farm:zarcScore>78</farm:zarcScore>
            <farm:calculationDate>2025-10-20T00:00:00Z</farm:calculationDate>
            <farm:riskClassificationKey>ZARC2025_MG_SOY</farm:riskClassificationKey>
        </farm:insuranceRisk>
      </core:genericApplicationPropertyOfRuralProperty>

      <core:genericApplicationPropertyOfRuralProperty>
        <farm:sustainability>
            <farm:carbonFootprint uom="kgCO2e/ha">950.0</farm:carbonFootprint>
            <farm:waterUsageEfficiency>0.78</farm:waterUsageEfficiency>
            <farm:biodiversityIndex>0.65</farm:biodiversityIndex>
            <farm:bioinputUsageRate>0.45</farm:bioinputUsageRate>
        </farm:sustainability>
      </core:genericApplicationPropertyOfRuralProperty>

    </farm:RuralProperty>
  </core:cityObjectMember>

</core:CityModel>
