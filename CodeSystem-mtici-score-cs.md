# MTICI Score Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTICI Score Code System**

## CodeSystem: MTICI Score Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/CodeSystem/mtici-score-cs | *Version*:0.1.0 |
| Draft as of 2025-03-31 | *Computable Name*:MticiScoreCS |

 
CodeSystem containing the codes to represent the MTICI score. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MTICIScoreValueSet](ValueSet-mtici-score-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mtici-score-cs",
  "url" : "http://testSK.org/CodeSystem/mtici-score-cs",
  "version" : "0.1.0",
  "name" : "MticiScoreCS",
  "title" : "MTICI Score Code System",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-03-31",
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
  "description" : "CodeSystem containing the codes to represent the MTICI score.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "0",
      "display" : "Grade 0: No perfusion"
    },
    {
      "code" : "1",
      "display" : "Grade 1: Antegrade reperfusion past the initial occlusion, but limited distal branch filling with little or slow distal reperfusion"
    },
    {
      "code" : "2a",
      "display" : "Grade 2a: Antegrade reperfusion of less than half of the occluded target artery previously ischemic territory"
    },
    {
      "code" : "2b",
      "display" : "Grade 2b: Antegrade reperfusion of more than half of the previously occluded target artery ischemic territory"
    },
    {
      "code" : "2c",
      "display" : "Grade 2c: Near complete perfusion except for slow flow or distal emboli in a few distal cortical vessels"
    },
    {
      "code" : "3",
      "display" : "Grade 3: Complete antegrade reperfusion of the previously occluded target artery ischemic territory, with absence of visualized occlusion in all distal branches"
    }
  ]
}

```
