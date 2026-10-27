# Stroke Risk Factor ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Risk Factor ValueSet**

## ValueSet: Stroke Risk Factor ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/ValueSet/stroke-risk-factor-vs | *Version*:0.1.0 |
| Active as of 2026-10-27 | *Computable Name*:StrokeRiskFactorValueSet |
| **Copyright/Legal**: This value set includes SNOMED CT® content, locally governed RES-Q concepts, and may include HL7 IPS value set content. SNOMED CT® is distributed by SNOMED International. | |

 
Defines standard and locally governed conditions or assertions relevant to stroke risk, including an option for unknown status. 

 
To aggregate core stroke risk factors, locally governed RES-Q assertions, and unknown/absent problem concepts for comprehensive capture and validation. 

 **References** 

* [Stroke Risk Factor Condition Profile](StructureDefinition-stroke-risk-factor-condition-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "stroke-risk-factor-vs",
  "url" : "http://testSK.org/ValueSet/stroke-risk-factor-vs",
  "version" : "0.1.0",
  "name" : "StrokeRiskFactorValueSet",
  "title" : "Stroke Risk Factor ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-27",
  "publisher" : "UMU",
  "contact" : [{
    "name" : "UMU",
    "telecom" : [{
      "system" : "url",
      "value" : "http://testSK.org/umu"
    }]
  }],
  "description" : "Defines standard and locally governed conditions or assertions relevant to stroke risk, including an option for unknown status.",
  "immutable" : false,
  "purpose" : "To aggregate core stroke risk factors, locally governed RES-Q assertions, and unknown/absent problem concepts for comprehensive capture and validation.",
  "copyright" : "This value set includes SNOMED CT® content, locally governed RES-Q concepts, and may include HL7 IPS value set content. SNOMED CT® is distributed by SNOMED International.",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://testSK.org/ValueSet/stroke-risk-factor-snomed-vs"]
    },
    {
      "system" : "http://qualityregistry.org/CodeSystem/stroke-risk-factor-cs"
    },
    {
      "valueSet" : ["http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-problems-uv-ips"]
    }]
  }
}

```
