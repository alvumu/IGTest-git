# Stroke Timing Metric Codes ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Timing Metric Codes ValueSet**

## CodeSystem: Stroke Timing Metric Codes ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/CodeSystem/timing-metric-codes-cs | *Version*:0.1.0 |
| Active as of 2025-10-20 | *Computable Name*:TimingMetricCodesCS |

 
Codes for key process timing metrics in acute stroke care (D2N, D2G). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TimingMetricCodesVS](ValueSet-timing-metric-codes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "timing-metric-codes-cs",
  "url" : "http://testSK.org/CodeSystem/timing-metric-codes-cs",
  "version" : "0.1.0",
  "name" : "TimingMetricCodesCS",
  "title" : "Stroke Timing Metric Codes ValueSet",
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
  "description" : "Codes for key process timing metrics in acute stroke care (D2N, D2G).",
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "D2G",
      "display" : "Door to Groin",
      "definition" : "Time (in minutes) from hospital arrival to the groin puncture for mechanical thrombectomy"
    },
    {
      "code" : "D2N",
      "display" : "Door to Needle",
      "definition" : "Time (in minutes) from the patient’s arrival at the hospital to the start of intravenous thrombolysis"
    }
  ]
}

```
