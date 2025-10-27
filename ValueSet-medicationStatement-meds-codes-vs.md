# MedicationStatement Therapy/Finding Codes - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationStatement Therapy/Finding Codes**

## ValueSet: MedicationStatement Therapy/Finding Codes (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/ValueSet/medicationStatement-meds-codes-vs | *Version*:0.1.0 |
| Draft as of 2025-03-31 | *Computable Name*:MedicationStatementMedsCodes |

 
ValueSet containing SNOMED CT codes representing various medication-related procedures and findings (e.g., therapies, administration procedures, findings about use). 

 **References** 

* [Prior Medication Statement Profile (R5)](StructureDefinition-prior-medication-statement-profile.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* SNOMED CT International edition 01-Feb 2025
* [codesystem MedicationStatement CodeSystem v0.1.0 (CodeSystem)](CodeSystem-medication-statement-cs.md)

This value set contains 9 concepts

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
  "id" : "medicationStatement-meds-codes-vs",
  "url" : "http://testSK.org/ValueSet/medicationStatement-meds-codes-vs",
  "version" : "0.1.0",
  "name" : "MedicationStatementMedsCodes",
  "title" : "MedicationStatement Therapy/Finding Codes",
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
  "description" : "ValueSet containing SNOMED CT codes representing various medication-related procedures and findings (e.g., therapies, administration procedures, findings about use). ",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "372586001",
            "display" : "Hypotensive agent (substance)"
          },
          {
            "code" : "372862008",
            "display" : "Anticoagulant (substance)"
          },
          {
            "code" : "1237404009",
            "display" : "Uses hormone method of contraception (finding)"
          },
          {
            "code" : "372912004",
            "display" : "Substance with 3-hydroxy-3-methylglutaryl-coenzyme A reductase inhibitor mechanism of action (substance)"
          },
          {
            "code" : "372756006",
            "display" : "Warfarin (substance)"
          },
          {
            "code" : "386952008",
            "display" : "Clopidogrel (substance)"
          },
          {
            "code" : "387458008",
            "display" : "Aspirin (substance)"
          }
        ]
      },
      {
        "system" : "http://testSK.org/CodeSystem/medication-statement-cs"
      }
    ]
  }
}

```
