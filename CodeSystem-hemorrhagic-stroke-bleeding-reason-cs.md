# Hemorrhagic Stroke Bleeding Reason Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hemorrhagic Stroke Bleeding Reason Code System**

## CodeSystem: Hemorrhagic Stroke Bleeding Reason Code System 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/CodeSystem/hemorrhagic-stroke-bleeding-reason-cs | *Version*:0.1.0 |
| Active as of 2025-10-07 | *Computable Name*:HemorrhagicStrokeBleedingReasonCS |
| **Copyright/Legal**: © Tecnomod. This CodeSystem is provided for use within this Implementation Guide. | |

 
Codes indicating the reason for bleeding in hemorrhagic stroke cases. 

 
To provide locally governed codes for the identified cause of bleeding in hemorrhagic stroke. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HemorrhagicStrokeBleedingReasonVS](ValueSet-hemorrhagic-stroke-bleeding-reason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hemorrhagic-stroke-bleeding-reason-cs",
  "url" : "http://testSK.org/CodeSystem/hemorrhagic-stroke-bleeding-reason-cs",
  "version" : "0.1.0",
  "name" : "HemorrhagicStrokeBleedingReasonCS",
  "title" : "Hemorrhagic Stroke Bleeding Reason Code System",
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
  "description" : "Codes indicating the reason for bleeding in hemorrhagic stroke cases.",
  "purpose" : "To provide locally governed codes for the identified cause of bleeding in hemorrhagic stroke.",
  "copyright" : "© Tecnomod. This CodeSystem is provided for use within this Implementation Guide.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "aneurysm",
      "display" : "Bleeding Reason Aneurysm",
      "definition" : "A cerebral aneurysm was identified as the cause of the patient's hemorrhagic stroke"
    },
    {
      "code" : "malformation",
      "display" : "Bleeding Reason Malformation",
      "definition" : "A vascular malformation was identified as the cause of the patient's hemorrhagic stroke"
    },
    {
      "code" : "other",
      "display" : "Bleeding Reason Other",
      "definition" : "Another, less common or unspecified cause of intracranial hemorrhage was identified"
    }
  ]
}

```
