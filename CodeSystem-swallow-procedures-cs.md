# Swallow Procedures Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Swallow Procedures Code System**

## CodeSystem: Swallow Procedures Code System 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/CodeSystem/swallow-procedures-cs | *Version*:0.1.0 |
| Active as of 2025-10-20 | *Computable Name*:SwallowProceduresCS |

 
Codes representing various swallowing assessment procedures. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SwallowProceduresValueset](ValueSet-swallow-procedures-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "swallow-procedures-cs",
  "url" : "http://testSK.org/CodeSystem/swallow-procedures-cs",
  "version" : "0.1.0",
  "name" : "SwallowProceduresCS",
  "title" : "Swallow Procedures Code System",
  "status" : "active",
  "date" : "2025-10-20T12:40:55+00:00",
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
  "description" : "Codes representing various swallowing assessment procedures.",
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "assist",
      "display" : "ASSIST",
      "definition" : "Assisted Swallowing Test (ASSIST)"
    },
    {
      "code" : "other",
      "display" : "Other Swallow Procedure",
      "definition" : "Other specified swallowing assessment procedure"
    },
    {
      "code" : "v-vst",
      "display" : "V-VST",
      "definition" : "Volume-Viscosity Swallow Test (V-VST)"
    }
  ]
}

```
