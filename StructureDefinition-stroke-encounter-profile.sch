<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Encounter
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'http://testSK.org/StructureDefinition/first-hospital-ext']) &gt;= 1">extension with URL = 'http://testSK.org/StructureDefinition/first-hospital-ext': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://testSK.org/StructureDefinition/first-hospital-ext']) &lt;= 1">extension with URL = 'http://testSK.org/StructureDefinition/first-hospital-ext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://testSK.org/StructureDefinition/initial-care-intensity-ext']) &lt;= 1">extension with URL = 'http://testSK.org/StructureDefinition/initial-care-intensity-ext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://testSK.org/StructureDefinition/required-post-acute-care-ext']) &lt;= 1">extension with URL = 'http://testSK.org/StructureDefinition/required-post-acute-care-ext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://testSK.org/StructureDefinition/discharge-department-service-ext']) &lt;= 1">extension with URL = 'http://testSK.org/StructureDefinition/discharge-department-service-ext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:actualPeriod) &gt;= 1">actualPeriod: minimum cardinality of 'actualPeriod' is 1</sch:assert>
      <sch:assert test="count(f:admission) &gt;= 1">admission: minimum cardinality of 'admission' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:actualPeriod</sch:title>
    <sch:rule context="f:Encounter/f:actualPeriod">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &gt;= 1">end: minimum cardinality of 'end' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:admission</sch:title>
    <sch:rule context="f:Encounter/f:admission">
      <sch:assert test="count(f:dischargeDisposition) &gt;= 1">dischargeDisposition: minimum cardinality of 'dischargeDisposition' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
