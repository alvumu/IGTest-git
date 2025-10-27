# Medications CodeSystem - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medications CodeSystem**

## CodeSystem: Medications CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/CodeSystem/medication-cs | *Version*:0.1.0 |
| Draft as of 2025-10-27 | *Computable Name*:MedicationCS |

 
Codes for drug products or substances representing the Medications on the patient discharge. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationVS](ValueSet-medication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-cs",
  "url" : "http://testSK.org/CodeSystem/medication-cs",
  "version" : "0.1.0",
  "name" : "MedicationCS",
  "title" : "Medications CodeSystem",
  "status" : "draft",
  "date" : "2025-10-27T10:25:48+00:00",
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
  "description" : "Codes for drug products or substances representing the Medications on the patient discharge.",
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "other-anticoagulant",
      "display" : "Other Anticoagulant",
      "definition" : "Any anticoagulant medication"
    },
    {
      "code" : "antiplatelet",
      "display" : "Any Antiplatelet",
      "definition" : "Any antiplatelet medication"
    },
    {
      "code" : "antidiabetic",
      "display" : "Any Antidiabetic",
      "definition" : "Any antidiabetic medication"
    },
    {
      "code" : "other",
      "display" : "Other Medication",
      "definition" : "A medication other than those specifically listed was prescribed at discharge"
    },
    {
      "code" : "other-antiplatelet",
      "display" : "Other Antiplatelet",
      "definition" : "Other Antiplatelet"
    }
  ]
}

```
