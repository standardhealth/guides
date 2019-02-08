<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ProcedureRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ProcedureRequest</sch:title>
    <sch:rule context="f:ProcedureRequest">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Asserter-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Asserter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Recorder-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Recorder-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-Category-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-Category-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-RequestIntent-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-RequestIntent-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-RequestIntent-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-RequestIntent-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-ExpectedPerformerType-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-ExpectedPerformerType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-ExpectedMethod-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-ExpectedMethod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-PerformerInstructions-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-PerformerInstructions-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-PatientInstructions-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-PatientInstructions-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-CommunicationMethod-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-CommunicationMethod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-PartOf-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-PartOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Method-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Location-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Location-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ProcedureRequest/f:meta</sch:title>
    <sch:rule context="f:ProcedureRequest/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ProcedureRequest/f:extension</sch:title>
    <sch:rule context="f:ProcedureRequest/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &gt;= 1">valueReference: minimum cardinality of 'valueReference' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &lt;= 1">valueReference: maximum cardinality of 'valueReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ProcedureRequest/f:bodySite</sch:title>
    <sch:rule context="f:ProcedureRequest/f:bodySite">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
