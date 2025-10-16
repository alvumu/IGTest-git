# Medications CodeSystem - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medications CodeSystem**

## CodeSystem: Medications CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/ValueSet/medication-vs | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:DischargeMedicationCS |

 
Codes for drug products or substances representing the Medications on the patient discharge. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DischargeMedicationVS](ValueSet-discharge-medication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "discharge-medication-cs",
  "url" : "http://testSK.org/ValueSet/medication-vs",
  "version" : "0.1.0",
  "name" : "DischargeMedicationCS",
  "title" : "Medications CodeSystem",
  "status" : "draft",
  "date" : "2025-10-16T13:22:06+00:00",
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
  "count" : 7,
  "concept" : [
    {
      "code" : "anticoagulant",
      "display" : "Any Anticoagulant",
      "definition" : "Any anticoagulant (such as warfarin or a NOAC) was prescribed at discharge"
    },
    {
      "code" : "antiplatelet",
      "display" : "Any Antiplatelet",
      "definition" : "Any antiplatelet medication (e.g., aspirin, clopidogrel) was prescribed at discharge"
    },
    {
      "code" : "asa",
      "display" : "Aspirin",
      "definition" : "Aspirin (acetylsalicylic acid) was prescribed at discharge"
    },
    {
      "code" : "clopidogrel",
      "display" : "Clopidogrel",
      "definition" : "Clopidogrel was prescribed at discharge"
    },
    {
      "code" : "heparin",
      "display" : "Heparin",
      "definition" : "Heparin (either unfractionated or low-molecular-weight) was prescribed at discharge"
    },
    {
      "code" : "warfarin",
      "display" : "Warfarin",
      "definition" : "Warfarin, a vitamin K antagonist—was prescribed at discharge"
    },
    {
      "code" : "other",
      "display" : "Other Medication",
      "definition" : "A medication other than those specifically listed was prescribed at discharge"
    }
  ]
}

```
