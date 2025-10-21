# Specific Stroke Finding Codes ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specific Stroke Finding Codes ValueSet**

## ValueSet: Specific Stroke Finding Codes ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/ValueSet/stroke-finding-codes-vs | *Version*:0.1.0 |
| Active as of 2025-10-21 | *Computable Name*:StrokeFindingCodesVS |

 
ValueSet for specific coded findings like Afib/Flutter status or mTICI score. 

 **References** 

* [Specific Stroke Finding Observation Profile (R5)](StructureDefinition-specific-finding-observation-profile.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Import all the codes that are contained in [Specific Stroke Finding Codes ValueSet](ValueSet-specific-finding-codes-vs.md)
* Import all the codes that are contained in [mTICI Score Codes ValueSet](ValueSet-mtici-code-vs.md)

 

### Expansion

Expansion from tx.fhir.org based on:

* SNOMED CT International edition 01-Feb 2025
* [codesystem MTICI Score Code System v0.1.0 (CodeSystem)](CodeSystem-mtici-score-cs.md)
* [valueset mTICI Score Codes ValueSet v0.1.0 (ValueSet)](ValueSet-mtici-code-vs.md)
* [valueset Specific Stroke Finding Codes ValueSet v0.1.0 (ValueSet)](ValueSet-specific-finding-codes-vs.md)

This value set contains 8 concepts

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
  "id" : "stroke-finding-codes-vs",
  "url" : "http://testSK.org/ValueSet/stroke-finding-codes-vs",
  "version" : "0.1.0",
  "name" : "StrokeFindingCodesVS",
  "title" : "Specific Stroke Finding Codes ValueSet",
  "status" : "active",
  "date" : "2025-10-21T11:09:58+00:00",
  "publisher" : "UMU",
  "contact" : [
    {
      "name" : "UMU",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://testSK.org/umu"
        }
      ]
    }
  ],
  "description" : "ValueSet for specific coded findings like Afib/Flutter status or mTICI score.",
  "compose" : {
    "include" : [
      {
        "valueSet" : ["http://testSK.org/ValueSet/specific-finding-codes-vs"]
      },
      {
        "valueSet" : ["http://testSK.org/ValueSet/mtici-code-vs"]
      }
    ]
  }
}

```
