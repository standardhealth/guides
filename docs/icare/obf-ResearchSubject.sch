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
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Status-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Status-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-datatype-Identifier-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-datatype-Identifier-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ParticipationPeriod-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ParticipationPeriod-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ResearchStudy-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ResearchStudy-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ResearchStudy-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ResearchStudy-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Patient-extension']) &gt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Patient-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Patient-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-Patient-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-AssignedArm-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-AssignedArm-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ActualArm-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-ActualArm-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-TerminationReason-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-TerminationReason-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Basic/f:meta</sch:title>
    <sch:rule context="f:Basic/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-SourceSystem-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/icare/StructureDefinition/obf-SourceSystem-extension': maximum cardinality of 'extension' is 1</sch:assert>
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
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
