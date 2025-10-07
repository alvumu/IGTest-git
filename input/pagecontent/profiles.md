---
title: Profiles
layout: default
---

The figure below illustrates graphically the main resource types used to structure RES-Q registry data and how they relate to each other. The core resource selected for representing a clinical case is the **Encounter**. While we considered using Composition, we chose a more semantically-driven model over a document-based approach. In the diagram, we omit the Patient resource for readability purposes.

![RES-Q Main Resource Types Diagram](FHIR-Resources-Diagram.png)


# Extensions

Extensions let you add well-defined data elements beyond the base FHIR resources while preserving compatibility and validation.  
In this guide you’ll find the extensions referenced by the profiles and examples.

- **Purpose & scope:** each extension documents the problem it solves and the data type it introduces.  
- **Canonical URL:** ensure the canonical follows your namespace.  
- **Context:** the allowed placement (resource/path) is explicitly defined to avoid misuse.  
- **Constraints & bindings:** review any required invariants and value set bindings before reuse.  
- **Examples:** look for instances showing the extension “in action” in the Examples section or on each extension’s page.  
- **Versioning & governance:** check `status` (draft/active) and change notes to assess maturity and impact.


### List of Profiles and Extensions

The links and desriptions for the profiles that have been defined for this implementation guide are listed here:

{% include list-folder.html srcpath="StructureDefinition" %}

