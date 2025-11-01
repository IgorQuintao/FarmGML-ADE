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
    gml:id="FarmModel_Meso">

    <gml:featureMember>
        <farm:AnnualCropArea gml:id="farm_crop_corn_2025">
            <gml:name>Talhão de Milho (LoD 1 com Terreno 3D)</gml:name>
            <farm:cropName>Milho</farm:cropName>
            
            <farm:lod1Geometry>
                <gml:MultiSurface gml:id="geom_corn_lod1_tin" srsName="urn:ogc:def:crs:EPSG::31983">
                    
                    <gml:surfaceMember>
                        <gml:Polygon gml:id="poly_corn_lod1_t1">
                            <gml:exterior>
                                <gml:LinearRing>
                                    <gml:posList>
                                        723000 7703000 100  724000 7703000 100  723000 7704000 105  723000 7703000 100  </gml:posList>
                                </gml:LinearRing>
                            </gml:exterior>
                        </gml:Polygon>
                    </gml:surfaceMember>
                    
                    <gml:surfaceMember>
                        <gml:Polygon gml:id="poly_corn_lod1_t2">
                            <gml:exterior>
                                <gml:LinearRing>
                                    <gml:posList>
                                        723000 7704000 105  724000 7703000 100  724000 7704000 105  723000 7704000 105  </gml:posList>
                                </gml:LinearRing>
                            </gml:exterior>
                        </gml:Polygon>
                    </gml:surfaceMember>
                    
                </gml:MultiSurface>
            </farm:lod1Geometry>

        </farm:AnnualCropArea>
    </gml:featureMember>
</gml:FeatureCollection>