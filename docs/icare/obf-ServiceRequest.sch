<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Basic
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Basic</sch:title>
    <sch:rule context="f:Basic">
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-Status-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-Status-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-SubjectOfRecord-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-SubjectOfRecord-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-SubjectOfRecord-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-SubjectOfRecord-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-CareContext-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-CareContext-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-StatementDateTime-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-StatementDateTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ReasonCode-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ReasonCode-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ServiceReasonReference-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ServiceReasonReference-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-datatype-Code-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-datatype-Code-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-datatype-Code-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-datatype-Code-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-Requester-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-Requester-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestIntent-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestIntent-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestIntent-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestIntent-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ExpectedPerformanceTime-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ExpectedPerformanceTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ExpectedPerformerType-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ExpectedPerformerType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ExpectedPerformer-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-ExpectedPerformer-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-datatype-PriorityCode-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-datatype-PriorityCode-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-GroupIdentifier-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-GroupIdentifier-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-DoNotPerform-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-DoNotPerform-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestQuantity-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestQuantity-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestSubjectOfRecord-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestSubjectOfRecord-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestSubjectOfRecord-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-RequestSubjectOfRecord-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-AsNeeded-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-AsNeeded-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-PatientInstruction-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-PatientInstruction-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Basic/f:meta</sch:title>
    <sch:rule context="f:Basic/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-SourceSystem-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/codex/us/icare/StructureDefinition/obf-SourceSystem-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Basic/f:extension</sch:title>
    <sch:rule context="f:Basic/f:extension">
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
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &gt;= 1">valueReference: minimum cardinality of 'valueReference' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &lt;= 1">valueReference: maximum cardinality of 'valueReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
