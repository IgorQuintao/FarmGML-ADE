<?xml version="1.0" encoding="UTF-8"?>
<gml:FeatureCollection
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:luse="http://www.opengis.net/citygml/landuse/3.0"
    xmlns:veg="http://www.opengis.net/citygml/vegetation/3.0"
    xmlns:gen="http://www.opengis.net/citygml/generics/3.0"
    xmlns:dyn="http://www.opengis.net/citygml/dynamizer/3.0"
    xmlns:vers="http://www.opengis.net/citygml/versioning/3.0"
    xmlns:bldg="http://www.opengis.net/citygml/building/3.0"
    xmlns:farm="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    
    xsi:schemaLocation="
        https://igorquintao.github.io/FarmGML-ADE/schemas/1.3 C:\Users\Usuario\Documents\GitHub\FarmGML-ADE\schemas\1.3\FarmGML.xsd
        http://www.opengis.net/citygml/3.0 ../../ogc/citygml/3.0/core.xsd
        http://www.opengis.net/citygml/landuse/3.0 ../../ogc/citygml/3.0/landUse.xsd
        http://www.opengis.net/citygml/vegetation/3.0 ../../ogc/citygml/3.0/vegetation.xsd
        http://www.opengis.net/citygml/building/3.0 ../../ogc/citygml/3.0/building.xsd
        http://www.opengis.net/citygml/generics/3.0 ../../ogc/citygml/3.0/generics.xsd
        http://www.opengis.net/citygml/dynamizer/3.0 ../../ogc/citygml/3.0/dynamizer.xsd
        http://www.opengis.net/citygml/versioning/3.0 ../../ogc/citygml/3.0/versioning.xsd
        http://www.opengis.net/citygml/versioning/3.0 ../../ogc/citygml/3.0/xAL.xsd
        http://www.opengis.net/gml/3.2 ../../ogc/gml/3.2.1/gml.xsd
        http://www.w3.org/1999/xlink ../../ogc/gml/3.2.1/xlinks.xsd"
    gml:id="FarmModel_001">

    <gml:featureMember>
        <farm:RuralProperty gml:id="farm_RP_001">
            <gml:name>Fazenda Modelo 2025</gml:name>
            <farm:holderID>CPF-12345678900</farm:holderID>
            <farm:ibgeCode>3145007</farm:ibgeCode>
            <farm:officialID>INCRA-88990077</farm:officialID>
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
            
                <farm:insuranceRisk>
                    <farm:zarcScore>78</farm:zarcScore>
                    <farm:calculationDate>2025-10-20T00:00:00Z</farm:calculationDate>
                    <farm:riskClassificationKey>ZARC2025_MG_SOY</farm:riskClassificationKey>
                </farm:insuranceRisk>

        </farm:RuralProperty>
    </gml:featureMember>
    
    <gml:featureMember>
        <farm:AnnualCropArea gml:id="farm_crop_soy_2025">
            <gml:boundedBy>
                <gml:Envelope srsName="urn:ogc:def:crs:EPSG::4326">
                    <gml:lowerCorner>-43.950 -19.980</gml:lowerCorner>
                    <gml:upperCorner>-43.940 -19.970</gml:upperCorner>
                </gml:Envelope>
            </gml:boundedBy>
            <farm:cropName>Soja</farm:cropName>
            <farm:cropCode codeSpace="https://agrovoc.fao.org/">SOY</farm:cropCode>
            <farm:plantingDate>2025-11-01</farm:plantingDate>
            <farm:isIrrigated>true</farm:isIrrigated>
            <farm:seedVarietyType codeSpace="https://embrapa.br/seeds">BRS 1010IPRO</farm:seedVarietyType>
            <farm:expectedHarvestsPerCycle>1</farm:expectedHarvestsPerCycle>
            <farm:lod0Geometry>
                <gml:Polygon gml:id="geom_soy_2025" srsName="urn:ogc:def:crs:EPSG::31983">
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

            <farm:producesLot>
                <farm:HarvestedLot gml:id="harvest_2025_001">
                    <farm:quantityHarvested uom="t">145.0</farm:quantityHarvested>
                    <farm:harvestDate>2026-03-10</farm:harvestDate>
                    <farm:quantitySold uom="t">120.0</farm:quantitySold>
                </farm:HarvestedLot>
            </farm:producesLot>

        </farm:AnnualCropArea>
    </gml:featureMember>

</gml:FeatureCollection>