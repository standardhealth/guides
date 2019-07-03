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
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/shr-core-CommentOrDescription-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/shr-core-CommentOrDescription-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-PatientInstruction-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/obf-PatientInstruction-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:serviceCategory) &lt;= 1">serviceCategory: maximum cardinality of 'serviceCategory' is 1</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 1">reasonCode: maximum cardinality of 'reasonCode' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Appointment</sch:title>
    <sch:rule context="f:Appointment">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label</sch:assert>
      <sch:assert test="not(exists(f:cancellationReason)) or f:status/@value=('no-show', 'cancelled')">Cancelation reason is only used for appointments that have been cancelled, or no-show</sch:assert>
      <sch:assert test="((exists(f:start) and exists(f:end)) or (f:status/@value='proposed') or (f:status/@value='cancelled') or (f:status/@value='waitlist'))">Only proposed or cancelled appointments can be missing start/end dates</sch:assert>
      <sch:assert test="((exists(f:start) and exists(f:end)) or (not(exists(f:start)) and not(exists(f:end))))">Either start and end are specified, or neither</sch:assert>
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
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="(exists(f:type) or exists(f:actor))">Either the type or actor on the participant SHALL be specified</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
