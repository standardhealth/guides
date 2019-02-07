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
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Status-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Status-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Patient-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Patient-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Patient-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Patient-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-encounter-Encounter-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-encounter-Encounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-CreationDate-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-CreationDate-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Asserter-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Asserter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Recorder-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Recorder-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-Category-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-Category-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Method-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Location-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-entity-Location-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Outcome-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/fhirURL/StructureDefinition/shr-base-Outcome-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DomainResource</sch:title>
    <sch:rule context="f:DomainResource">
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource</sch:assert>
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(parent::f:contained and f:text)">If the resource is contained in another resource, it SHALL NOT contain any narrative</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DomainResource/f:meta</sch:title>
    <sch:rule context="f:DomainResource/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
