<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ServiceRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-PartOf-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-PartOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Method-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 1">performer: maximum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 1">reasonCode: maximum cardinality of 'reasonCode' is 1</sch:assert>
      <sch:assert test="count(f:reasonReference) &lt;= 1">reasonReference: maximum cardinality of 'reasonReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label</sch:assert>
      <sch:assert test="exists(f:code) or not(exists(f:orderDetail))">orderDetail SHALL only be present if code is present</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:extension</sch:title>
    <sch:rule context="f:ServiceRequest/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &gt;= 1">valueReference: minimum cardinality of 'valueReference' is 1</sch:assert>
      <sch:assert test="count(f:valueReference) &lt;= 1">valueReference: maximum cardinality of 'valueReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:bodySite</sch:title>
    <sch:rule context="f:ServiceRequest/f:bodySite">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
