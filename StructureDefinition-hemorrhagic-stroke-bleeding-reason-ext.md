# Hemorrhagic Stroke – Bleeding Reason - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hemorrhagic Stroke – Bleeding Reason**

## Extension: Hemorrhagic Stroke – Bleeding Reason 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext | *Version*:0.1.0 |
| Active as of 2025-10-07 | *Computable Name*:HemorrhagicStrokeBleedingReasonExt |

Captures, as a CodeableConcept bound (required) to HemorrhagicStrokeBleedingReasonVS, the identified cause of intracranial bleeding in hemorrhagic stroke (e.g., aneurysm, vascular malformation, other). Use when coding a definitive hemorrhagic stroke Condition to support analytics and decision support; do not use for non-hemorrhagic etiologies or when the cause is unknown/undetermined.

To standardize capture of the bleeding cause in hemorrhagic stroke conditions for decision support and analytics.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/SKtestIG|current/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.csv), [Excel](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.xlsx), [Schematron](StructureDefinition-hemorrhagic-stroke-bleeding-reason-ext.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hemorrhagic-stroke-bleeding-reason-ext",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://testSK.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext",
  "version" : "0.1.0",
  "name" : "HemorrhagicStrokeBleedingReasonExt",
  "title" : "Hemorrhagic Stroke – Bleeding Reason",
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
  "description" : "Captures, as a CodeableConcept bound (required) to HemorrhagicStrokeBleedingReasonVS, the identified cause of intracranial bleeding in hemorrhagic stroke (e.g., aneurysm, vascular malformation, other). Use when coding a definitive hemorrhagic stroke Condition to support analytics and decision support; do not use for non-hemorrhagic etiologies or when the cause is unknown/undetermined.",
  "purpose" : "To standardize capture of the bleeding cause in hemorrhagic stroke conditions for decision support and analytics.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Condition"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Hemorrhagic Stroke – Bleeding Reason",
        "definition" : "Captures, as a CodeableConcept bound (required) to HemorrhagicStrokeBleedingReasonVS, the identified cause of intracranial bleeding in hemorrhagic stroke (e.g., aneurysm, vascular malformation, other). Use when coding a definitive hemorrhagic stroke Condition to support analytics and decision support; do not use for non-hemorrhagic etiologies or when the cause is unknown/undetermined."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://testSK.org/StructureDefinition/hemorrhagic-stroke-bleeding-reason-ext"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://testSK.org/ValueSet/hemorrhagic-stroke-bleeding-reason-vs"
        }
      }
    ]
  }
}

```
