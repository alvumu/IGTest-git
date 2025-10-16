# PatientAgeGenderSnomedExample - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientAgeGenderSnomedExample**

## Example Patient: PatientAgeGenderSnomedExample

Profile: [Patient with SNOMED Gender and Age (extensions)](StructureDefinition-patient-age-gender-snomed-profile.md)

Anonymous Patient (no stated gender), DoB Unknown

-------

| | |
| :--- | :--- |
| [Gender (SNOMED CT)](StructureDefinition-gender-snomed-ext.md) | Male |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientAgeGenderSnomedExample",
  "meta" : {
    "profile" : [
      "http://testSK.org/StructureDefinition/patient-age-gender-snomed-profile"
    ]
  },
  "extension" : [
    {
      "url" : "http://testSK.org/StructureDefinition/gender-snomed-ext",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "248153007"
          }
        ]
      }
    }
  ]
}

```
