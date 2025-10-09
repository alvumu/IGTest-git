# Stroke Etiology Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Etiology Code System**

## CodeSystem: Stroke Etiology Code System 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/CodeSystem/stroke-etiology-cs | *Version*:0.1.0 |
| Active as of 2025-10-07 | *Computable Name*:StrokeEtiologyCS |
| **Copyright/Legal**: © Tecnomod. This CodeSystem is provided for use within this Implementation Guide. | |

 
Codes indicating the etiology of strokes. 

 
To provide locally governed codes for classifying ischemic stroke etiology. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StrokeEtiologyVS](ValueSet-stroke-etiology-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "stroke-etiology-cs",
  "url" : "http://testSK.org/CodeSystem/stroke-etiology-cs",
  "version" : "0.1.0",
  "name" : "StrokeEtiologyCS",
  "title" : "Stroke Etiology Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-07",
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
  "description" : "Codes indicating the etiology of strokes.",
  "purpose" : "To provide locally governed codes for classifying ischemic stroke etiology.",
  "copyright" : "© Tecnomod. This CodeSystem is provided for use within this Implementation Guide.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "atherosclerosis",
      "display" : "Stroke Etiology Atherosclerosis",
      "definition" : "Specifies that large artery atherosclerosis (for example, significant stenosis in the carotid or basilar arteries) was identified as the cause of the stroke."
    },
    {
      "code" : "other",
      "display" : "Stroke Etiology Other",
      "definition" : "Specifies that the stroke etiology falls into a rarer category not covered by the main classifications, such as vasculitis or hypercoagulable states."
    },
    {
      "code" : "lacunar",
      "display" : "Stroke Etiology Lacunar",
      "definition" : "Specifies that the stroke is attributed to small vessel disease, often manifesting as a lacunar infarct."
    }
  ]
}

```
