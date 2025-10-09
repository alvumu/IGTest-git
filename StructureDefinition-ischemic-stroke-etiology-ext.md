# Ischemic Stroke – Etiology - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ischemic Stroke – Etiology**

## Extension: Ischemic Stroke – Etiology 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/StructureDefinition/ischemic-stroke-etiology-ext | *Version*:0.1.0 |
| Active as of 2025-10-07 | *Computable Name*:StrokeStrokeEtiologyExt |

Records the determined ischemic stroke etiology as a CodeableConcept bound (required) to StrokeEtiologyVS (e.g., cardioembolic, large artery atherosclerosis, lacunar, cryptogenic). Apply to definitive ischemic stroke Conditions after diagnostic workup; avoid use for hemorrhagic strokes or provisional hypotheses not yet established.

To enable consistent categorization of ischemic stroke etiology for interoperability and analysis.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Stroke Diagnosis Condition Profile](StructureDefinition-stroke-diagnosis-condition-profile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/SKtestIG|current/StructureDefinition/ischemic-stroke-etiology-ext)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ischemic-stroke-etiology-ext.csv), [Excel](StructureDefinition-ischemic-stroke-etiology-ext.xlsx), [Schematron](StructureDefinition-ischemic-stroke-etiology-ext.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ischemic-stroke-etiology-ext",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://testSK.org/StructureDefinition/ischemic-stroke-etiology-ext",
  "version" : "0.1.0",
  "name" : "StrokeStrokeEtiologyExt",
  "title" : "Ischemic Stroke – Etiology",
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
  "description" : "Records the determined ischemic stroke etiology as a CodeableConcept bound (required) to StrokeEtiologyVS (e.g., cardioembolic, large artery atherosclerosis, lacunar, cryptogenic). Apply to definitive ischemic stroke Conditions after diagnostic workup; avoid use for hemorrhagic strokes or provisional hypotheses not yet established.",
  "purpose" : "To enable consistent categorization of ischemic stroke etiology for interoperability and analysis.",
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
        "short" : "Ischemic Stroke – Etiology",
        "definition" : "Records the determined ischemic stroke etiology as a CodeableConcept bound (required) to StrokeEtiologyVS (e.g., cardioembolic, large artery atherosclerosis, lacunar, cryptogenic). Apply to definitive ischemic stroke Conditions after diagnostic workup; avoid use for hemorrhagic strokes or provisional hypotheses not yet established."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://testSK.org/StructureDefinition/ischemic-stroke-etiology-ext"
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
          "valueSet" : "http://testSK.org/ValueSet/stroke-etiology-vs"
        }
      }
    ]
  }
}

```
