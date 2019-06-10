<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AdverseEvent
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:AdverseEvent</sch:title>
    <sch:rule context="f:AdverseEvent">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-Status-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-Severity-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-Severity-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-Participant-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-Participant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:event) &gt;= 1">event: minimum cardinality of 'event' is 1</sch:assert>
      <sch:assert test="count(f:seriousness) &gt;= 1">seriousness: minimum cardinality of 'seriousness' is 1</sch:assert>
      <sch:assert test="count(f:suspectEntity) &gt;= 1">suspectEntity: minimum cardinality of 'suspectEntity' is 1</sch:assert>
      <sch:assert test="count(f:study) &lt;= 1">study: maximum cardinality of 'study' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdverseEvent</sch:title>
    <sch:rule context="f:AdverseEvent">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdverseEvent/f:extension</sch:title>
    <sch:rule context="f:AdverseEvent/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdverseEvent/f:suspectEntity</sch:title>
    <sch:rule context="f:AdverseEvent/f:suspectEntity">
      <sch:assert test="count(f:causality) &gt;= 1">causality: minimum cardinality of 'causality' is 1</sch:assert>
      <sch:assert test="count(f:causality) &lt;= 1">causality: maximum cardinality of 'causality' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdverseEvent.suspectEntity</sch:title>
    <sch:rule context="f:AdverseEvent/f:suspectEntity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdverseEvent/f:suspectEntity/f:causality</sch:title>
    <sch:rule context="f:AdverseEvent/f:suspectEntity/f:causality">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-CauseCategory-extension']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/obf/StructureDefinition/obf-CauseCategory-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:assessment) &gt;= 1">assessment: minimum cardinality of 'assessment' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdverseEvent.suspectEntity.causality</sch:title>
    <sch:rule context="f:AdverseEvent/f:suspectEntity/f:causality">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
