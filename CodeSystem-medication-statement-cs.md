# MedicationStatement CodeSystem - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationStatement CodeSystem**

## CodeSystem: MedicationStatement CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/CodeSystem/medication-statement-cs | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:MedicationStatementCS |

 
Codes representing various medication-related procedures and findings (e.g., therapies, administration procedures, findings about use). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationStatementMedsCodes](ValueSet-medicationStatement-meds-codes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-statement-cs",
  "url" : "http://testSK.org/CodeSystem/medication-statement-cs",
  "version" : "0.1.0",
  "name" : "MedicationStatementCS",
  "title" : "MedicationStatement CodeSystem",
  "status" : "draft",
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
  "description" : "Codes representing various medication-related procedures and findings (e.g., therapies, administration procedures, findings about use).",
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "antidiabetic",
      "display" : "Any Antidiabetic",
      "definition" : "The patient was taking antidiabetic medication prior to hospital admission or before the stroke event"
    },
    {
      "code" : "antiplatelet",
      "display" : "Any Antiplatelet",
      "definition" : "The patient was taking antiplatelet medication prior to hospital admission or before the stroke event"
    },
    {
      "code" : "aspirin",
      "display" : "Aspirin",
      "definition" : "The patient was taking aspirin (acetylsalicylic acid) prior to hospital admission or before the stroke event"
    },
    {
      "code" : "clopidogrel",
      "display" : "Clopidogrel",
      "definition" : "The patient was taking clopidogrel prior to hospital admission or before the stroke event"
    }
  ]
}

```
