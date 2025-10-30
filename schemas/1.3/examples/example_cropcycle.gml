<?xml version="1.0" encoding="UTF-8"?>
<farm:RuralProperty
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:luse="http://www.opengis.net/citygml/landuse/3.0"
    xmlns:veg="http://www.opengis.net/citygml/vegetation/3.0"
    xmlns:farm="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation=
     "http://www.opengis.net/citygml/3.0 http://schemas.opengis.net/citygml/3.0/core.xsd
      https://igorquintao.github.io/FarmGML-ADE/schemas/1.3 https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/FarmGML.xsd 
      https://igorquintao.github.io/FarmGML-ADE/schemas/1.3 https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/farm-core.xsd
      http://www.opengis.net/gml/3.2 http://schemas.opengis.net/gml/3.2.1/gml.xsd
      http://www.w3.org/1999/xlink http://www.w3.org/1999/xlink.xsd"
    gml:id="FarmModel_CropCycle_2025">

    <farm:RuralProperty gml:id="farm_RP_002">
      <gml:name>Fazenda Boa Safra</gml:name>
      <farm:holderID>CPF-98765432100</farm:holderID>
      <farm:officialID>INCRA-00112233</farm:officialID>
      <farm:carCode>GO-0099887-2233</farm:carCode>
      <farm:ibgeCode>5208707</farm:ibgeCode>
      <farm:keepsRecords>true</farm:keepsRecords>

      <farm:cropArea>
        <!-- Cultura 1: Milho -->
        <farm:AnnualCropArea gml:id="crop_milho_2025">
          <farm:cropName>Milho</farm:cropName>
          <farm:cropCode codeSpace="https://agrovoc.fao.org/">MAIZE</farm:cropCode>
          <farm:plantingDate>2025-10-01</farm:plantingDate>
          <farm:isIrrigated>false</farm:isIrrigated>
          <farm:seedVarietyType codeSpace="https://embrapa.br/seeds">BRS1010</farm:seedVarietyType>
          <farm:expectedHarvestsPerCycle>1</farm:expectedHarvestsPerCycle>

          <farm:lod0Geometry>
            <gml:Polygon srsName="urn:ogc:def:crs:EPSG::31983">
              <gml:exterior>
                <gml:LinearRing>
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

          <!-- Operações agrícolas associadas -->
          <farm:targetsCropArea>
            <farm:AgriculturalOperation gml:id="operation_planting_maize_2025">
              <farm:operationType codeSpace="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/codelists/OperationType.xml">planting</farm:operationType>
              <farm:operationDate>2025-10-02T00:00:00Z</farm:operationDate>
              <farm:observedValue uom="h">5.5</farm:observedValue>
              <farm:areaAffected uom="ha">10.0</farm:areaAffected>
              <farm:usesInput>
                <farm:InputUsed>
                  <farm:inputType codeSpace="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/codelists/InputType.xml">fertilizer</farm:inputType>
                  <farm:productName>NPK 20-05-20</farm:productName>
                  <farm:quantityApplied uom="kg/ha">300</farm:quantityApplied>
                </farm:InputUsed>
              </farm:usesInput>
            </farm:AgriculturalOperation>
          </farm:targetsCropArea>

          <farm:producesLot>
            <farm:HarvestedLot gml:id="harvest_maize_2025">
              <farm:quantityHarvested uom="t">120.0</farm:quantityHarvested>
              <farm:harvestDate>2026-03-15</farm:harvestDate>
              <farm:quantitySold uom="t">110.0</farm:quantitySold>
            </farm:HarvestedLot>
          </farm:producesLot>
        </farm:AnnualCropArea>

        <!-- Cultura 2: Soja -->
        <farm:AnnualCropArea gml:id="crop_soy_2025">
          <farm:cropName>Soja</farm:cropName>
          <farm:cropCode codeSpace="https://agrovoc.fao.org/">SOY</farm:cropCode>
          <farm:plantingDate>2025-11-10</farm:plantingDate>
          <farm:isIrrigated>true</farm:isIrrigated>
          <farm:seedVarietyType codeSpace="https://embrapa.br/seeds">BRS 1010IPRO</farm:seedVarietyType>
          <farm:expectedHarvestsPerCycle>1</farm:expectedHarvestsPerCycle>

          <farm:lod0Geometry>
            <gml:Polygon srsName="urn:ogc:def:crs:EPSG::31983">
              <gml:exterior>
                <gml:LinearRing>
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

          <farm:targetsCropArea>
            <farm:AgriculturalOperation gml:id="operation_fertilizing_soy_2025">
              <farm:operationType codeSpace="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/codelists/OperationType.xml">fertilizing</farm:operationType>
              <farm:operationDate>2025-12-01T00:00:00Z</farm:operationDate>
              <farm:observedValue uom="h">2.0</farm:observedValue>
              <farm:areaAffected uom="ha">8.0</farm:areaAffected>
              <farm:usesInput>
                <farm:InputUsed>
                  <farm:inputType codeSpace="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/codelists/InputType.xml">bioinput</farm:inputType>
                  <farm:productName>Azospirillum sp.</farm:productName>
                  <farm:quantityApplied uom="L/ha">1.5</farm:quantityApplied>
                </farm:InputUsed>
              </farm:usesInput>
            </farm:AgriculturalOperation>
          </farm:targetsCropArea>

          <farm:producesLot>
            <farm:HarvestedLot gml:id="harvest_soy_2025">
              <farm:quantityHarvested uom="t">145.0</farm:quantityHarvested>
              <farm:harvestDate>2026-03-20</farm:harvestDate>
              <farm:quantitySold uom="t">130.0</farm:quantitySold>
            </farm:HarvestedLot>
          </farm:producesLot>
        </farm:AnnualCropArea>

      </farm:cropArea>
  </farm:RuralProperty>
</farm:RuralProperty>
