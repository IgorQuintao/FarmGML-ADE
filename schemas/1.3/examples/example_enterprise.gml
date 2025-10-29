<?xml version="1.0" encoding="UTF-8"?>
<core:CityModel
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
    gml:id="FarmModel_Enterprise_2025">

  <core:cityObjectMember>
    <farm:RuralProperty gml:id="farm_RP_003">
      <gml:name>AgroComplexo Santa Vitória</gml:name>
      <farm:holderID>CNPJ-12345678000199</farm:holderID>
      <farm:officialID>INCRA-55443322</farm:officialID>
      <farm:carCode>MG-3344556-7788</farm:carCode>
      <farm:ibgeCode>3145205</farm:ibgeCode>
      <farm:keepsRecords>true</farm:keepsRecords>

      <farm:enterprise>
        <farm:LivestockEnterprise gml:id="enterprise_cattle_2025">
          <farm:occupiedArea uom="ha">20.0</farm:occupiedArea>
          <farm:startDate>2020-01-01</farm:startDate>
        </farm:LivestockEnterprise>
      </farm:enterprise>

      <farm:enterprise>
        <farm:AquacultureEnterprise gml:id="enterprise_fish_2025">
          <farm:occupiedArea uom="ha">5.0</farm:occupiedArea>
          <farm:startDate>2023-01-01</farm:startDate>
        </farm:AquacultureEnterprise>
      </farm:enterprise>

      <farm:enterprise>
        <farm:ForestryEnterprise gml:id="enterprise_eucalyptus_2025">
          <farm:occupiedArea uom="ha">25.0</farm:occupiedArea>
          <farm:startDate>2019-05-10</farm:startDate>
        </farm:ForestryEnterprise>
      </farm:enterprise>

      <farm:farmSize>
        <farm:physicalSizeAAU uom="ha">50.0</farm:physicalSizeAAU>
      </farm:farmSize>

      <farm:diversification>
        <farm:hasOtherEconomicActivity>true</farm:hasOtherEconomicActivity>
        <farm:otherEconomicActivityType codeSpace="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3/codelists/MainLocationType.xml">agroindustry</farm:otherEconomicActivityType>
        <farm:significanceOfOtherActivity>significant</farm:significanceOfOtherActivity>
      </farm:diversification>

      <core:genericApplicationPropertyOfRuralProperty>
        <farm:insuranceRisk>
            <farm:zarcScore>82</farm:zarcScore>
            <farm:calculationDate>2025-09-25T00:00:00Z</farm:calculationDate>
            <farm:riskClassificationKey>ZARC2025_MG_CATTLE</farm:riskClassificationKey>
        </farm:insuranceRisk>
      </core:genericApplicationPropertyOfRuralProperty>

    </farm:RuralProperty>
  </core:cityObjectMember>

</core:CityModel>
