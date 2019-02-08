<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Encounter
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-encounter-EncounterClass-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-encounter-EncounterClass-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-PartOf-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-PartOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-ClinicalNote-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-ClinicalNote-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:meta</sch:title>
    <sch:rule context="f:Encounter/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:extension</sch:title>
    <sch:rule context="f:Encounter/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &gt;= 1">valueReference: minimum cardinality of 'valueReference' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &lt;= 1">valueReference: maximum cardinality of 'valueReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
