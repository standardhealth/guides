<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile DomainResource
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:DomainResource</sch:title>
    <sch:rule context="f:DomainResource">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Status-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Status-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-SubjectOfRecord-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-CareContext-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-CareContext-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-StatementDateTime-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-StatementDateTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-datatype-Code-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-datatype-Code-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Requester-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-Requester-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-RequestIntent-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-RequestIntent-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-RequestIntent-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-RequestIntent-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-ExpectedPerformanceTime-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-ExpectedPerformanceTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-ExpectedPerformerType-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-ExpectedPerformerType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-datatype-PriorityCode-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-datatype-PriorityCode-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DomainResource</sch:title>
    <sch:rule context="f:DomainResource">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
