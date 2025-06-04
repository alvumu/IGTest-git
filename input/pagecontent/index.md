---
title: Stroke Care Implementation Guide
layout: default
version: 1.0.0
status: draft
canonical: http://testSK.org/ig/stroke-ig
authors:
  - name: Clinical-FHIR Team
    url: https://example.org/team
---

# FHIR Implementation Guide – Hospital Stroke Care

## Introduction
This Implementation Guide (IG) provides a standardized framework for capturing, exchanging, and analyzing clinical and administrative data related to in-hospital stroke care. It draws on patterns and best practices from existing guides such as:
- https://build.fhir.org/ig/HL7/fhir-ips/
- https://hl7.org/fhir/us/core/
- https://simplifier.net/guide/ca-fex?version=2.2.0-DFT-Ballot
- https://simplifier.net/guide/fhir-standards-wales-implementation-guide?version=2.2.0

### Purpose
- **Standardize** the representation of data for patients admitted with acute stroke events (“Stroke Encounter”), including admission details, in-hospital care intensity, discharge planning, diagnoses, risk factors, vital signs, functional scores, procedures, and follow-up.
- **Facilitate** interoperability among hospital information systems, electronic health records, and data registries by using consistent profiles, ValueSets, CodeSystems, and extensions.
- **Provide** clear, example-driven documentation for implementers (developers, clinical informaticists, data analysts) to speed adoption and ensure consistent data capture.

### Scope
- **Inclusions**:
  - Profiles for Encounter (“StrokeEncounterProfile”), MedicationRequest at discharge, MedicationStatement for prior medications, Observations (vital signs, functional scores, timing metrics, circumstances, specific findings, age at onset), Procedures (imaging, thrombolysis, thrombectomy, swallowing screening), Conditions (stroke diagnosis, stroke risk factors).
  - Custom CodeSystems and ValueSets for stroke-specific concepts (arrival mode, discharge destination, initial care intensity, mTICI, mRS, AFib/Flutter status, timing contexts, procedure reasons, etc.).
  - Extensions for recording information not covered by base FHIR (first-hospital indicator, care intensity, post-acute care requirement, department/service at discharge, observation timing, procedure timing, bleeding reason, stroke etiology).
  - Example instances demonstrating how to populate each profile with real-world data.

- **Exclusions**:
  - Outpatient stroke management beyond the acute hospitalization (post-discharge rehab in the community).
  - Pediatric stroke protocols (focus is on adult acute stroke).
  - Billing, administrative workflows outside core clinical documentation.

### Audience
- **Developers** implementing FHIR servers or applications to capture stroke data.
- **Clinical informaticists** designing local data models or integrating multiple systems.
- **Data analysts/researchers** needing consistent FHIR-based data extracts for stroke registries.
- **Hospital IT teams** configuring EHRs to comply with interoperability requirements.

---

##  Guide Structure

This IG is organized into discrete sections to facilitate navigation and modular implementation. Each major section corresponds to a folder or page in the generated site:

1. **Introduction**
   - Overview, purpose, scope, and intended audience.

2. **Guide Organization**
   - Explanation of how content is structured (this section).
   - High-level map of folders/pages and their relationships.

3. **Clinical Profiles**
   - Detailed definitions of each FHIR profile, including constraints, element tables, bindings, and invariants.
   - Each profile lives in its own markdown/HTML page under a `profiles/` folder.

4. **CodeSystems & ValueSets**
   - Definitions for all custom CodeSystems and ValueSets used by profiles.
   - Each resource in this section appears in a `terminology/` folder with its own page.

5. **Extensions**
   - Definitions for all custom extensions that augment FHIR base resources.
   - Each extension has a dedicated page under `extensions/`.

6. **Example Instances**
   - Concrete FHIR resources (JSON or Turtle) demonstrating how to populate each profile.
   - These examples reside in an `examples/` folder, with one file per instance (e.g., `StrokeEncounterExample.json`).

7. **Technical Documentation**
   - Guidance on using FHIR Shorthand (FSH) and SUSHI to build the IG.
   - Explanation of invariants (FHIRPath/CQL) and naming conventions.
   - Validation recommendations.

8. **Downloads & Resources**
   - Direct links to download the complete IG bundle (JSON/XML).
   - Link to the SUSHI-generated ImplementationGuide resource.
   - Any OpenAPI/Swagger documentation (if provided).

9. **Contributing & Contact**
   - Instructions for submitting issues or pull requests.
   - Maintainers’ contact information.
   - Licensing and usage policies.
  
+ ## More Pages  
+ - [General Principles](general-principles.html)  
