<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Media
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Media</sch:title>
    <sch:rule context="f:Media">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-CareContext-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-CareContext-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RelevantTime-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-RelevantTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-BodyLocation-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-BodyLocation-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Status-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-PartOf-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-PartOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Media</sch:title>
    <sch:rule context="f:Media">
      <sch:assert test="not(f:type/@value='audio') or not(f:height)">Height can only be used for a photo or video</sch:assert>
      <sch:assert test="not(f:type/@value='audio') or not(f:width)">Width can only be used for a photo or video</sch:assert>
      <sch:assert test="not(f:type/@value='photo') or not(f:duration)">Duration can only be used for an audio or a video</sch:assert>
      <sch:assert test="(f:type/@value='photo') or not(f:frames)">Frames can only be used for a photo</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Media/f:meta</sch:title>
    <sch:rule context="f:Media/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Media/f:extension</sch:title>
    <sch:rule context="f:Media/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &gt;= 1">valueCodeableConcept: minimum cardinality of 'valueCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:valueCodeableConcept) &lt;= 1">valueCodeableConcept: maximum cardinality of 'valueCodeableConcept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
