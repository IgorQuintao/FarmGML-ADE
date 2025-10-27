<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <title>Regras Semânticas da FarmGML ADE v1.3</title>

  <ns prefix="farm" uri="https://igorquintao.github.io/FarmGML-ADE/schemas/1.3"/>
  <ns prefix="core" uri="http://www.opengis.net/citygml/3.0"/>

  <pattern>
    <title>Regras de consistência da RuralProperty</title>
    <rule context="farm:RuralProperty">
      <assert test="farm:farmSize/farm:economicSize/farm:totalAgriculturalOutput = (farm:farmSize/farm:economicSize/farm:cropOutput + farm:farmSize/farm:economicSize/farm:livestockOutput)">
        Erro em [gml:id = <value-of select="@gml:id"/>]: O 'totalAgriculturalOutput' (<value-of select="farm:farmSize/farm:economicSize/farm:totalAgriculturalOutput"/>) 
        não bate com a soma de cropOutput e livestockOutput.
      </assert>
    </rule>
  </pattern>

  <pattern>
    <title>Regras de consistência do HarvestedLot</title>
    <rule context="farm:HarvestedLot">
      <assert test="number(farm:quantitySold) &lt;= number(farm:quantityHarvested)">
         Erro em [gml:id = <value-of select="@gml:id"/>]: A quantidade vendida (quantitySold) 
         não pode ser maior que a quantidade colhida (quantityHarvested).
      </assert>
    </rule>
  </pattern>
</schema>
