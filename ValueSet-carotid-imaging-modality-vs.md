# Carotid Arteries Imaging Modality ValueSet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Carotid Arteries Imaging Modality ValueSet**

## ValueSet: Carotid Arteries Imaging Modality ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/ValueSet/carotid-imaging-modality-vs | *Version*:0.1.0 |
| Active as of 2025-10-30 | *Computable Name*:CarotidImagingModalityVS |

 
Defines codes for different types of carotid artery imaging. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 3 concepts

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
  "id" : "carotid-imaging-modality-vs",
  "url" : "http://testSK.org/ValueSet/carotid-imaging-modality-vs",
  "version" : "0.1.0",
  "name" : "CarotidImagingModalityVS",
  "title" : "Carotid Arteries Imaging Modality ValueSet",
  "status" : "active",
  "date" : "2025-10-30T10:04:33+00:00",
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
  "description" : "Defines codes for different types of carotid artery imaging.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "58920005",
            "display" : "Angiography of carotid artery (procedure)"
          },
          {
            "code" : "416940007",
            "display" : "Doppler ultrasonography of carotid arteries (procedure)"
          },
          {
            "code" : "419949007",
            "display" : "Computed tomography angiography of intracranial artery with contrast (procedure)"
          },
          {
            "code" : "1366357009",
            "display" : "Magnetic resonance imaging angiography of intracranial artery (procedure)"
          }
        ]
      }
    ]
  }
}

```
