---
title: Patient with SNOMED Gender and Age (extensions)
layout: default
navSection: profiles
---

# PatientAgeGenderSNOMEDProfile (Patient)

**URL:** http://testSK.org/StructureDefinition/patient-age-gender-snomed-profile  
**Id:** patient-age-gender-snomed-profile · **Status:** active  
**Title:** Patient with SNOMED Gender and Age (extensions)  
**Description:** Patient profile that **adds** an integer age extension and a **SNOMED-based gender** extension. The native `Patient.gender` element is **suppressed** to encourage use of the SNOMED extension.

## Must Support
`extension[age]`, `extension[gender-sct]`

## Elements and Constraints

| Element | Card. | MS | Notes |
|---|---:|:---:|---|
| `Patient.extension(age)` | 0..1 | ✓ | Uses `PatientAge` (integer years) |
| `Patient.extension(gender-sct)` | 0..1 | ✓ | Uses `GenderSNOMED` (CodeableConcept bound to `GenderSNOMEDVS`) |
| `Patient.gender` | 0..0 |  | Native field not used in this profile |

**Extensions used:**
- `PatientAge` → `http://testSK.org/StructureDefinition/patient-age-ext`  
- `GenderSNOMED` → `http://testSK.org/StructureDefinition/gender-snomed-ext`

## Example (excerpt)
```json
{
  "resourceType": "Patient",
  "meta": { "profile": ["http://testSK.org/StructureDefinition/patient-age-gender-snomed-profile"] },
  "extension": [
    {
      "url": "http://testSK.org/StructureDefinition/patient-age-ext",
      "valueInteger": 45
    },
    {
      "url": "http://testSK.org/StructureDefinition/gender-snomed-ext",
      "valueCodeableConcept": {
        "coding": [{
          "system": "http://snomed.info/sct",
          "code": "248153007",
          "display": "Male (finding)"
        }]
      }
    }
  ]
}