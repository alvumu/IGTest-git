---

layout: default
---

# Conformance

This section describes how implementers can claim conformance to the **Stroke Care Implementation Guide (IG)** and what requirements apply to servers and clients.

## Scope

This IG defines:
- **Profiles** on core FHIR R5 resources (e.g., Encounter, Observation, Procedure, Condition, MedicationRequest, MedicationStatement).
- **Terminology artifacts** (ValueSets and CodeSystems) that bind to profile elements.
- **Extensions** to capture stroke-specific data not covered by the base resources.
- **Examples** illustrating compliant data instances.

## Claiming Conformance

An implementation **conforms** to this IG if it:
1. Supports the **Must Support** data elements on each relevant profile.
2. Uses the **required**/appropriate **terminology bindings** (e.g., Required, Extensible).
3. Satisfies **cardinality** and **invariants** defined in the profiles.
4. Implements applicable **search parameters** and **operations** (if defined for your use case).
5. Satisfies any defined **CapabilityStatement** requirements (server/client).

> See the **Artifacts** page for the full list of profiles and their element tables.

## Must Support

- **Definition:** If an element is marked **Must Support**, systems **SHALL** be able to *send, receive, and persist* the element when it is relevant and present in the source data.
- **Empty Data:** If a Must Support element is unknown or not present, systems SHALL follow the guidance in **Data Absent/Unknown** (see *Guidance* page).
- **Choice Types:** When multiple data types are allowed, at least one SHALL be supported as documented in the profile narrative.

## Cardinality & Invariants

- **Cardinality** is authoritative; elements SHALL satisfy the minimum/maximum occurrences.
- **Invariants** (FHIRPath) are **required** constraints; validation SHALL fail if violated (e.g., “if status = `not-done` then `statusReason` must exist”).

## Terminology Binding Strength

- **Required:** Only concepts from the bound value set are allowed.
- **Extensible:** Prefer concepts from the value set; other concepts are allowed **only** if a suitable match is not available.
- **Preferred / Example:** Use is recommended, but not enforced.

See **Terminology** for full lists of ValueSets and CodeSystems.

## Server Requirements

If a **server** claims conformance:
- It SHALL publish a **CapabilityStatement** (or declare conformance via the one provided by this IG, if defined).
- It SHALL advertise supported **profiles** (`StructureDefinition.url`) for each resource type it exposes.
- It SHOULD support **_include**, **_revinclude**, and common search params for clinical exchange (e.g., `subject`, `encounter`, `date`, `code`), when relevant to the profile.

## Client Requirements

If a **client** claims conformance:
- It SHALL be capable of producing/consuming resources that **validate** against the profiles it claims to support.
- It SHALL be able to process **Must Support** elements and required **terminology bindings**.

## Security and Privacy (Informative)

- Follow local privacy law and institutional policy for PHI/PII.
- Use TLS for transport (HTTPS).
- Consider OAuth2/SMART-on-FHIR (or equivalent) for authorization in interactive workflows.

