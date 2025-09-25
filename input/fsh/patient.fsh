// ===== Aliases =====
Alias: SCT = http://snomed.info/sct

// ===== ValueSet: Gender in SNOMED =====
ValueSet: GenderSNOMEDVS
Id: vs-gender-snomed
Title: "Gender (SNOMED CT)"
Description: "Value set to represent patient gender using SNOMED CT codes, analogous to AdministrativeGender."
* ^status = #active
* ^experimental = false
// Example SNOMED CT concepts commonly used for gender-like values
* SCT#248153007 "Male (finding)"
* SCT#248152002 "Female (finding)"
* SCT#32570681000036106  "Indeterminate sex (finding)"

// ===== Extension: Patient Age (integer) =====
Extension: PatientAge
Id: patient-age-ext
Title: "Patient Age (integer)"
Description: "Patient age in years represented as an integer."
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only integer
* valueInteger 1..1
* valueInteger ^short = "Age in years (integer)"

// ===== Extension: Gender in SNOMED =====
Extension: GenderSNOMED
Id: gender-snomed-ext
Title: "Gender (SNOMED CT)"
Description: "Patient gender represented with SNOMED CT codes."
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from GenderSNOMEDVS (required)

// ===== Profile: Patient with SNOMED Gender and Age Extensions =====
Profile: PatientAgeGenderSNOMEDProfile
Parent: Patient
Id: patient-age-gender-snomed-profile
Title: "Patient with SNOMED Gender and Age (extensions)"
Description: "Profile that adds an integer age extension and a SNOMED-based gender extension."
* extension contains PatientAge named age 1..1 MS
* extension contains GenderSNOMED named gender-sct 0..1 MS
* gender 0..0 


Instance: PatientAgeGenderSnomedExample
InstanceOf: PatientAgeGenderSNOMEDProfile
* extension[PatientAge].valueInteger = 45
* extension[GenderSNOMED].valueCodeableConcept = SCT#248153007
