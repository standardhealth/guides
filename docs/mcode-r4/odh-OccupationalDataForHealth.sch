<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Composition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Composition</sch:title>
    <sch:rule context="f:Composition">
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:section) &gt;= 1">section: minimum cardinality of 'section' is 1</sch:assert>
      <sch:assert test="count(f:section) &lt;= 1">section: maximum cardinality of 'section' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Composition</sch:title>
    <sch:rule context="f:Composition">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:type</sch:title>
    <sch:rule context="f:Composition/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:type/f:coding</sch:title>
    <sch:rule context="f:Composition/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Composition.attester</sch:title>
    <sch:rule context="f:Composition/f:attester">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Composition.relatesTo</sch:title>
    <sch:rule context="f:Composition/f:relatesTo">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Composition.event</sch:title>
    <sch:rule context="f:Composition/f:event">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Composition.section</sch:title>
    <sch:rule context="f:Composition/f:section">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:text) or exists(f:entry) or exists(f:section)">A section must contain at least one of text, entries, or sub-sections</sch:assert>
      <sch:assert test="not(exists(f:emptyReason) and exists(f:entry))">A section can only have an emptyReason if it is empty</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:section/f:section</sch:title>
    <sch:rule context="f:Composition/f:section/f:section">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:title) &lt;= 1">title: maximum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 1">focus: maximum cardinality of 'focus' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 1">mode: maximum cardinality of 'mode' is 1</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 1">orderedBy: maximum cardinality of 'orderedBy' is 1</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 1">emptyReason: maximum cardinality of 'emptyReason' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
