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
        http://www.opengis.net/citygml/versioning/3.0 ../../ogc/citygml/3.0/xAL.xsd
        http://www.opengis.net/citygml/versioning/3.0 ../../ogc/citygml/3.0/versioning.xsd
        http://www.opengis.net/gml/3.2 ../../ogc/gml/3.2.1/gml.xsd
        http://www.w3.org/1999/xlink ../../ogc/gml/3.2.1/xlink.xsd"
    gml:id="FarmModel_Macro">

    <gml:featureMember>
        <farm:RuralProperty gml:id="farm_RP_001">
            <gml:name>Fazenda Modelo 2025 (LoD 0)</gml:name>
            <farm:holderID>CPF-12345678900</farm:holderID>
            <farm:carCode>MG-0123456-7890</farm:carCode>
            
            <farm:lod0Geometry>
                <gml:Polygon gml:id="geom_RP_001_lod0" srsName="urn:ogc:def:crs:EPSG::31983">
                    <gml:exterior>
                        <gml:LinearRing>
                            <gml:posList>
                                721000 7702500 0
                                721000 7701000 0
                                722500 7701000 0
                                722500 7702500 0
                                721000 7702500 0
                            </gml:posList>
                        </gml:LinearRing>
                    </gml:exterior>
                </gml:Polygon>
            </farm:lod0Geometry>
            
        </farm:RuralProperty>
    </gml:featureMember>

    <gml:featureMember>
        <farm:AnnualCropArea gml:id="farm_crop_soy_2025">
            <farm:cropName>Soja</farm:cropName>
            <farm:lod0Geometry>
                <gml:Polygon gml:id="geom_soy_2025" srsName="urn:ogc:def:crs:EPSG::31983">
                    <gml:exterior>
                        <gml:LinearRing>
                            <gml:posList>
                                721128 7702296 0
                                721128 7701296 0
                                722128 7701296 0
                                722128 7702296 0
                                721128 7702296 0
                            </gml:posList>
                        </gml:LinearRing>
                    </gml:exterior>
                </gml:Polygon>
            </farm:lod0Geometry>
        </farm:AnnualCropArea>
    </gml:featureMember>

</gml:FeatureCollection>
