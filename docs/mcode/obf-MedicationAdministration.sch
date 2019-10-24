<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationAdministration
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationAdministration</sch:title>
    <sch:rule context="f:MedicationAdministration">
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Category-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Category-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-StatementDateTime-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-StatementDateTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:wasNotGiven) &lt;= 0">wasNotGiven: maximum cardinality of 'wasNotGiven' is 0</sch:assert>
      <sch:assert test="count(f:reasonNotGiven) &lt;= 0">reasonNotGiven: maximum cardinality of 'reasonNotGiven' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationAdministration</sch:title>
    <sch:rule context="f:MedicationAdministration">
      <sch:assert test="not(exists(f:reasonGiven) and f:wasNotGiven/@value=true())">Reason given is only permitted if wasNotGiven is false</sch:assert>
      <sch:assert test="not(exists(f:reasonNotGiven) and f:wasNotGiven/@value=false())">Reason not given is only permitted if wasNotGiven is true</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationAdministration/f:meta</sch:title>
    <sch:rule context="f:MedicationAdministration/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-SourceSystem-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-SourceSystem-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationAdministration/f:extension</sch:title>
    <sch:rule context="f:MedicationAdministration/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationAdministration.dosage</sch:title>
    <sch:rule context="f:MedicationAdministration/f:dosage">
      <sch:assert test="exists(f:quantity) or exists(f:rateRatio) or exists(f:rateRange)">SHALL have at least one of dosage.quantity and dosage.rate[x]</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
