<?xml version="1.0" encoding="UTF-8"?>
<gml:FeatureCollection
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:luse="http://www.opengis.net/citygml/landuse/3.0"
    xmlns:veg="http://www.opengis.net/citygml/vegetation/3.0"
    xmlns:farm="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    
    xsi:schemaLocation="
        https://igorquintao.github.io/FarmGML-ADE/schemas/1.3 ../FarmGML.xsd
        http://www.opengis.net/citygml/3.0 ../../ogc/citygml/3.0/core.xsd
        http://www.opengis.net/citygml/landuse/3.0 ../../ogc/citygml/3.0/landUse.xsd
        http://www.opengis.net/citygml/vegetation/3.0 ../../ogc/citygml/3.0/vegetation.xsd
        http://www.opengis.net/citygml/building/3.0 ../../ogc/citygml/3.0/building.xsd
        http://www.opengis.net/citygml/generics/3.0 ../../ogc/citygml/3.0/generics.xsd
        http://www.opengis.net/citygml/dynamizer/3.0 ../../ogc/citygml/3.0/dynamizer.xsd
        http://www.opengis.net/citygml/versioning/3.0 ../../ogc/citygml/3.0/versioning.xsd
        http://www.opengis.net/gml/3.2 ../../ogc/gml/3.2.1/gml.xsd
        http://www.w3.org/1999/xlink ../../ogc/gml/3.2.1/xlink.xsd"
    gml:id="FarmModel_CropCycle_2025">

    <gml:featureMember>
        <farm:RuralProperty gml:id="farm_RP_002">
          <gml:name>Fazenda Boa Safra</gml:name>
          <farm:holderID>CPF-98765432100</farm:holderID>
          <farm:officialID>INCRA-00112233</farm:officialID>
          <farm:carCode>GO-0099887-2233</farm:carCode>
          <farm:ibgeCode>5208707</farm:ibgeCode>
          <farm:keepsRecords>true</farm:keepsRecords>
        </farm:RuralProperty>
    </gml:featureMember>

    <gml:featureMember>
        <farm:AnnualCropArea gml:id="crop_milho_2025">
          <farm:cropName>Milho</farm:cropName>
          <farm:cropCode codeSpace="https://agrovoc.fao.org/">MAIZE</farm:cropCode>
          </farm:AnnualCropArea>
    </gml:featureMember>
    
    <gml:featureMember>
        <farm:AnnualCropArea gml:id="crop_soy_2025">
           <farm:cropName>Soja</farm:cropName>
           <farm:cropCode codeSpace="https://agrovoc.fao.org/">SOY</farm:cropCode>
           </farm:AnnualCropArea>
    </gml:featureMember>

</gml:FeatureCollection>