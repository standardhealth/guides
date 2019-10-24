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
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Category-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Category-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-RequestIntent-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-RequestIntent-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-RequestIntent-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-RequestIntent-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ExpectedPerformerType-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ExpectedPerformerType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Metadata-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Metadata-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Language-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Language-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ImplicitRules-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ImplicitRules-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Narrative-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Narrative-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-GroupIdentifier-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-GroupIdentifier-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-DoNotPerform-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-DoNotPerform-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-RequestQuantity-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-RequestQuantity-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ProcedureRequestSubjectOfRecord-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ProcedureRequestSubjectOfRecord-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ProcedureRequestSubjectOfRecord-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-ProcedureRequestSubjectOfRecord-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-AsNeeded-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-AsNeeded-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-PatientInstruction-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-PatientInstruction-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-PartOf-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-PartOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Method-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ProcedureRequest/f:extension</sch:title>
    <sch:rule context="f:ProcedureRequest/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &gt;= 1">valueReference: minimum cardinality of 'valueReference' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &lt;= 1">valueReference: maximum cardinality of 'valueReference' is 1</sch:assert>
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
