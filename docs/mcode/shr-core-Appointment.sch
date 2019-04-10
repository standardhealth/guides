<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Appointment
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Appointment</sch:title>
    <sch:rule context="f:Appointment">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Type-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-ServiceCategory-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-ServiceCategory-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-StatementDateTime-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-StatementDateTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Appointment</sch:title>
    <sch:rule context="f:Appointment">
      <sch:assert test="((exists(f:start) and exists(f:end)) or (f:status/@value='proposed') or (f:status/@value='cancelled'))">Only proposed or cancelled appointments can be missing start/end dates</sch:assert>
      <sch:assert test="((exists(f:start) and exists(f:end)) or (not(exists(f:start)) and not(exists(f:end))))">Either start and end are specified, or neither</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Appointment/f:extension</sch:title>
    <sch:rule context="f:Appointment/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Appointment/f:participant</sch:title>
    <sch:rule context="f:Appointment/f:participant">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Appointment.participant</sch:title>
    <sch:rule context="f:Appointment/f:participant">
      <sch:assert test="(exists(f:type) or exists(f:actor))">Either the type or actor on the participant MUST be specified</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
