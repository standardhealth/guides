<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Extension
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Extension</sch:title>
    <sch:rule context="f:Extension">
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-DoseSequenceNumber-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-DoseSequenceNumber-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-InstructionText-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-InstructionText-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-PatientInstruction-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-PatientInstruction-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Timing-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-Timing-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-AsNeeded-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-AsNeeded-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-AdministrationSite-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-AdministrationSite-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-RouteIntoBody-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-datatype-RouteIntoBody-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Method-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-DoseAndRate-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-DoseAndRate-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-MaxDosePerPeriod-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-MaxDosePerPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-MaxDosePerAdministration-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-MaxDosePerAdministration-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-MaxDosePerLifetime-extension']) &lt;= 1">extension with URL = 'http://mcodeinitiative.org/us/mcode/StructureDefinition/obf-MaxDosePerLifetime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Extension/f:extension</sch:title>
    <sch:rule context="f:Extension/f:extension">
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
