# Medications ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medications ValueSet**

## ValueSet: Medications ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/ValueSet/discharge-medication-vs | *Version*:0.1.0 |
| Draft as of 2025-10-27 | *Computable Name*:DischargeMedicationVS |

 
Codes for drug products or substances representing the Medications on the patient discharge. 

 **References** 

* [Discharge Medication Request Profile](StructureDefinition-discharge-medication-request-profile.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Include all codes defined in [`http://testSK.org/CodeSystem/medication-cs`](CodeSystem-discharge-medication-cs.md)version 📦0.1.0
* Import all the codes that are contained in https://hl7.org/fhir/uv/ips/ValueSet-absent-or-unknown-medications-uv-ips.html

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "discharge-medication-vs",
  "url" : "http://testSK.org/ValueSet/discharge-medication-vs",
  "version" : "0.1.0",
  "name" : "DischargeMedicationVS",
  "title" : "Medications ValueSet",
  "status" : "draft",
  "date" : "2025-10-27T09:20:18+00:00",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://testSK.org/CodeSystem/medication-cs"
      },
      {
        "valueSet" : [
          "https://hl7.org/fhir/uv/ips/ValueSet-absent-or-unknown-medications-uv-ips.html"
        ]
      }
    ]
  }
}

```
