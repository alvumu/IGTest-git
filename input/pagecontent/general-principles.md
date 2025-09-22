---
title: General Principles
layout: default
---


# Principios Generales de Modelado


## Diseño centrado en la implementación
- Perfiles **mínimos pero suficientes** para cubrir indicadores clínicos clave y reporting.
- **Compatibilidad** con recursos base R5.


## Reutilización de terminologías
- **SNOMED CT** para conceptos clínicos.
- **LOINC** para observaciones/mediciones.
- **UCUM** para unidades.
- **ICD-10** para codificación secundaria si se requiere.


## Temporizaciones críticas del ictus
- Modelar tiempos *Door*, *Imaging*, *Needle*, *Groin puncture*, *Recanalization* como `Observation` con perfiles de timing, y atributos de **evento de referencia** + **offset** cuando aplique.


## Calidad de datos
- Cardinalidades y `mustSupport` alineados con indicadores de calidad.
- Invariantes (FHIRPath) para coherencia, p.ej., si `Procedure.code = Thrombolysis` ⇒ debe existir tiempo *Needle*.


## Interoperabilidad
- Evitar conceptos locales si existen equivalentes estándar; cuando se usen locales, mapear mediante `ConceptMap`.
