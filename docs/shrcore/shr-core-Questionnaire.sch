<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Questionnaire
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(parent::f:contained and f:text)">If the resource is contained in another resource, it SHALL NOT contain any narrative</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource</sch:assert>
      <sch:assert test="count(descendant::f:linkId/@value)=count(distinct-values(descendant::f:linkId/@value))">The link ids for groups and questions must be unique within the questionnaire</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:meta</sch:title>
    <sch:rule context="f:Questionnaire/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-SourceSystem-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/shr/StructureDefinition/shr-core-SourceSystem-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="not(f:type/@value='display' and f:readOnly)">Read-only can't be specified for &quot;display&quot; items</sch:assert>
      <sch:assert test="not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])">Default values can't be specified for groups or display items</sch:assert>
      <sch:assert test="not(f:type/@value='display' and (f:required or f:repeats))">Required and repeat aren't permitted for display items</sch:assert>
      <sch:assert test="f:type/@value=('choice','open-choice') or not(f:option or f:options)">Only 'choice' items can have options</sch:assert>
      <sch:assert test="not(f:options and f:option)">A question cannot have both option and options</sch:assert>
      <sch:assert test="not(f:type/@value='display' and f:code)">Display items cannot have a &quot;code&quot; asserted</sch:assert>
      <sch:assert test="f:type/@value=('boolean', 'decimal', 'integer', 'open-choice', 'string', 'text', 'url') or not(f:maxLength)">Maximum length can only be declared for simple question types</sch:assert>
      <sch:assert test="not((f:type/@value='group' and not(f:item)) or (f:type/@value='display' and f:item))">Group items must have nested items, display items cannot have nested items</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="count(f:*[starts-with(local-name(.), 'answer')]|self::f:hasAnswer) = 1">enableWhen must contain either a 'answer' or a 'hasAnswer' element</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.option</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:option">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 1">prefix: maximum cardinality of 'prefix' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:required) &lt;= 1">required: maximum cardinality of 'required' is 1</sch:assert>
      <sch:assert test="count(f:repeats) &lt;= 1">repeats: maximum cardinality of 'repeats' is 1</sch:assert>
      <sch:assert test="count(f:readOnly) &lt;= 1">readOnly: maximum cardinality of 'readOnly' is 1</sch:assert>
      <sch:assert test="count(f:maxLength) &lt;= 1">maxLength: maximum cardinality of 'maxLength' is 1</sch:assert>
      <sch:assert test="count(f:options) &lt;= 1">options: maximum cardinality of 'options' is 1</sch:assert>
      <sch:assert test="count(f:initial[x]) &lt;= 1">initial[x]: maximum cardinality of 'initial[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:question) &gt;= 1">question: minimum cardinality of 'question' is 1</sch:assert>
      <sch:assert test="count(f:question) &lt;= 1">question: maximum cardinality of 'question' is 1</sch:assert>
      <sch:assert test="count(f:hasAnswer) &lt;= 1">hasAnswer: maximum cardinality of 'hasAnswer' is 1</sch:assert>
      <sch:assert test="count(f:answer[x]) &lt;= 1">answer[x]: maximum cardinality of 'answer[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="count(f:*[starts-with(local-name(.), 'answer')]|self::f:hasAnswer) = 1">enableWhen must contain either a 'answer' or a 'hasAnswer' element</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:option</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:option">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.option</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:option">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
