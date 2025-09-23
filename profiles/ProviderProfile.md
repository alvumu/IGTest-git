

# EncounterProviderProvenanceProfile (Provenance)

**URL:** http://testSK.org/StructureDefinition/encounter-provider-provenance  
**Version:** 1.0.0 · **Status:** active  
**Base:** Provenance (FHIR R5)

**Purpose:** Capture provenance for a **stroke Encounter**, linking the **healthcare provider organization** as the recording/authoring agent to the Encounter target.

## Must Support
`target`, `agent`, `agent[ProviderOrg].who`, `agent[ProviderOrg].who.display`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Provenance.target` | 1..* | ✓ | **Only** `Reference(Encounter)` |
| `Provenance.agent` | 1..* | ✓ | Sliced to require a provider organization agent |
| `Provenance.agent[ProviderOrg].type` | 1..1 | ✓ | Fixed: `provenance-participant-type#author` |
| `Provenance.agent[ProviderOrg].who` | 1..1 | ✓ | **Only** `Reference(Organization)` |
| `Provenance.agent[ProviderOrg].who.display` | 0..1 | ✓ | Display name of provider organization |

### Slicing (agent)
- Discriminator: `type` (pattern/profile as needed)  
- Rules: **open** (additional agents allowed, but at least one `ProviderOrg` slice is required)

## Notes
- The **organization identifier** (e.g., OID/NPI/local ID) is modeled on the referenced **Organization** resource. This profile requires the reference; validation of identifiers lives in the Organization profile or implementation guidance.

## Example (excerpt)

**Organization (referenced):**
- `ExampleOrganization` (Organization)

**Provenance:**
- **Profile:** EncounterProviderProvenanceProfile  
- `target = Reference(StrokeEncounterExample)`  
- `agent[ProviderOrg].type = provenance-participant-type#author`  
- `agent[ProviderOrg].who = Reference(ExampleOrganization)`  
- `agent[ProviderOrg].who.display = "Example Healthcare Organization"`
