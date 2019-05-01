<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ValueSet
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ValueSet</sch:title>
    <sch:rule context="f:ValueSet">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-IsExtensible-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-IsExtensible-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extensible) &lt;= 0">extensible: maximum cardinality of 'extensible' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet</sch:title>
    <sch:rule context="f:ValueSet">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(parent::f:contained and f:text)">If the resource is contained in another resource, it SHALL NOT contain any narrative</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource</sch:assert>
      <sch:assert test="exists(f:compose) or exists(f:expansion)">Value set SHALL contain at least one of a compose or an expansion element</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ValueSet/f:meta</sch:title>
    <sch:rule context="f:ValueSet/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-SourceSystem-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-SourceSystem-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose</sch:title>
    <sch:rule context="f:ValueSet/f:compose">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose.include</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:include">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="not(exists(f:concept) or exists(f:filter)) or exists(f:system)">A value set with concepts or filters SHALL include a system</sch:assert>
      <sch:assert test="not(exists(f:concept)) or not(exists(f:filter))">Cannot have both concept and filter</sch:assert>
      <sch:assert test="exists(f:valueSet) or exists(f:system)">A value set include/exclude SHALL have a value set or a system</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose.include.concept</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:include/f:concept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose.include.concept.designation</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:include/f:concept/f:designation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose.include.filter</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:include/f:filter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ValueSet/f:compose/f:exclude</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:exclude">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ValueSet/f:compose/f:exclude/f:concept</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:exclude/f:concept">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose.exclude.concept</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:exclude/f:concept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ValueSet/f:compose/f:exclude/f:concept/f:designation</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:exclude/f:concept/f:designation">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose.exclude.concept.designation</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:exclude/f:concept/f:designation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ValueSet/f:compose/f:exclude/f:filter</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:exclude/f:filter">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:property) &gt;= 1">property: minimum cardinality of 'property' is 1</sch:assert>
      <sch:assert test="count(f:property) &lt;= 1">property: maximum cardinality of 'property' is 1</sch:assert>
      <sch:assert test="count(f:op) &gt;= 1">op: minimum cardinality of 'op' is 1</sch:assert>
      <sch:assert test="count(f:op) &lt;= 1">op: maximum cardinality of 'op' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.compose.exclude.filter</sch:title>
    <sch:rule context="f:ValueSet/f:compose/f:exclude/f:filter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.expansion</sch:title>
    <sch:rule context="f:ValueSet/f:expansion">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.expansion.parameter</sch:title>
    <sch:rule context="f:ValueSet/f:expansion/f:parameter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ValueSet.expansion.contains</sch:title>
    <sch:rule context="f:ValueSet/f:expansion/f:contains">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:code) or exists(f:display)">SHALL have a code or a display</sch:assert>
      <sch:assert test="exists(f:code) or (f:abstract/@value = true())">Must have a code if not abstract</sch:assert>
      <sch:assert test="exists(f:system) or not(exists(f:code))">Must have a system if a code is present</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ValueSet/f:expansion/f:contains/f:designation</sch:title>
    <sch:rule context="f:ValueSet/f:expansion/f:contains/f:designation">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ValueSet/f:expansion/f:contains/f:contains</sch:title>
    <sch:rule context="f:ValueSet/f:expansion/f:contains/f:contains">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:abstract) &lt;= 1">abstract: maximum cardinality of 'abstract' is 1</sch:assert>
      <sch:assert test="count(f:inactive) &lt;= 1">inactive: maximum cardinality of 'inactive' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
