<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AllergyIntolerance
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:AllergyIntolerance</sch:title>
    <sch:rule context="f:AllergyIntolerance">
      <sch:assert test="count(f:verificationStatus) &gt;= 1">verificationStatus: minimum cardinality of 'verificationStatus' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AllergyIntolerance</sch:title>
    <sch:rule context="f:AllergyIntolerance">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label</sch:assert>
      <sch:assert test="f:verificationStatus/@value='entered-in-error' or exists(f:clinicalStatus)">AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.</sch:assert>
      <sch:assert test="f:verificationStatus/@value!='entered-in-error' or not(exists(f:clinicalStatus))">AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-error</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AllergyIntolerance.reaction</sch:title>
    <sch:rule context="f:AllergyIntolerance/f:reaction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
