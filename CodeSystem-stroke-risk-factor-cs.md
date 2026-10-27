# RES-Q Stroke Risk Factor Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RES-Q Stroke Risk Factor Code System**

## CodeSystem: RES-Q Stroke Risk Factor Code System 

| | |
| :--- | :--- |
| *Official URL*:http://qualityregistry.org/CodeSystem/stroke-risk-factor-cs | *Version*:0.1.0 |
| Active as of 2026-10-27 | *Computable Name*:StrokeRiskFactorCS |

 
Locally governed RES-Q concepts used when the registry assertion is more specific than an available standard terminology concept. 

 
To preserve registry-specific stroke risk-factor semantics without conflating them with broader or different SNOMED CT concepts. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Stroke Risk Factor ValueSet](ValueSet-stroke-risk-factor-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-risk-factor-cs",
  "url" : "http://qualityregistry.org/CodeSystem/stroke-risk-factor-cs",
  "version" : "0.1.0",
  "name" : "StrokeRiskFactorCS",
  "title" : "RES-Q Stroke Risk Factor Code System",
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
  "description" : "Locally governed RES-Q concepts used when the registry assertion is more specific than an available standard terminology concept.",
  "purpose" : "To preserve registry-specific stroke risk-factor semantics without conflating them with broader or different SNOMED CT concepts.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "smoking-last-10-years",
    "display" : "Smoking within the last 10 years",
    "definition" : "The patient smoked at any time during the 10 years preceding the index stroke event."
  }]
}

```
