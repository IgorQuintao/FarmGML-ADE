# FarmGML-ADE 🚜
## FarmGML ADE v1.3
**Agricultural Domain Extension (ADE) for CityGML 3.0**

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![OGC Standard](https://img.shields.io/badge/OGC-CityGML%203.0-blue.svg)](https://www.ogc.org/standard/citygml/)

---

**FarmGML** is an *Application Domain Extension (ADE)* of **CityGML 3.0**, designed to represent **rural and agricultural features** in a 3D geospatial context.

It extends CityGML classes (such as `LandUse`, `Vegetation`, and `Building`) to model:
- Rural properties and agricultural enterprises  
- Crop areas, production cycles, and harvest lots  
- Risk and sustainability indicators  
- Integration with geospatial and remote-sensing data  

FarmGML enables integration between **3D city models**, **agricultural information systems**, **QGIS**, **3DCityDB**, and **CesiumJS** for **digital twins of rural areas**.

---

## 🧩 Version Information

| Field | Value |
|-------|-------|
| **ADE Name** | FarmGML |
| **Version** | 1.3 |
| **Target Standard** | OGC CityGML 3.0 |
| **Namespace URI** | `https://igorquintao.github.io/FarmGML-ADE/schemas/1.3` |
| **Schema Location** | `https://raw.githubusercontent.com/IgorQuintao/FarmGML-ADE/main/schemas/1.3/FarmGML.xsd` |
| **Prefix** | `farm` |
| **Last Updated** | 2025-10-25 |
| **License** | Creative Commons Attribution 4.0 International (CC BY 4.0) |

---

## 🗂️ Repository Structure
```bash
FarmGML-ADE/
│
├── model/                  # UML/XMI source (conceptual model)
│   └── 1.3/
│       ├── FarmGML_v1.3.xmi
│       └── diagrams/
│
├── schemas/                # Generated schemas and examples (distribution)
│   ├── 1.3/
│   │   ├── FarmGML.xsd
│   │   ├── farm-core.xsd
│   │   ├── farm-production.xsd
│   │   ├── …
│   │   ├── codelists/
│   │   ├── examples/
│   │   │   └── example_ruralproperty.gml
│   │   └── metadata/
│   │       └── farmgml-metadata.yaml
│
├── tools/                  # Automation and validation tools
│   ├── shapechange-config/
│   │   └── farmgml_1.3_config.xml
│   ├── scripts/
│   │   ├── generate-xsd-from-uml.bat
│   │   └── validate-xsd.sh
│   └── validation/
│
├── docs/                   # Documentation and policies
│   ├── specification/
│   │   ├── FarmGML_Conceptual_Model.pdf
│   │   ├── FarmGML_Encoding_Specification.pdf
│   │   └── FarmGML_UseCases.pdf
│   ├── schema-reference/
│   │   └── 1.3/farmgml.html
│   └── policies/
│       └── namespace-policy.md
│
└── .ogc/                   # OGC submission metadata
├── submission-manifest.yaml
├── contact.json
└── ogc-registration.yaml
```
---

## ⚙️ Model-Driven Architecture (MDA) Workflow

FarmGML adopts a **Model-Driven Architecture** approach.  
All schemas and documentation are generated from the UML conceptual model.

**Workflow summary:**
1. Model conceptual features in UML (e.g., Enterprise Architect, MagicDraw).
2. Export UML → XMI (`model/1.3/FarmGML_v1.3.xmi`).
3. Configure **ShapeChange** using `tools/shapechange-config/farmgml_1.3_config.xml`.
4. Run ShapeChange to generate XSD modules under `schemas/1.3/`.
5. Validate using the included `validate-xsd.sh` script.
6. Test instances (`example_ruralproperty.gml`) with **3DCityDB**, **CesiumJS**, and **QGIS**.

---

## 🧪 Validation and Use Cases

## 🧪 Validation and Use Cases

To validate the FarmGML ADE:

1. **3DCityDB**
   - Import the CityGML 3.0 core schema and FarmGML ADE modules.
   - Load `schemas/1.3/examples/example_ruralproperty.gml` using the Importer/Exporter.
   - Confirm ADE tables are created (e.g., `farm_ruralproperty`, `farm_croparea`).
   - Visualize using the 3DCityDB Web Map Client or CesiumJS.

2. **CesiumJS**
   - Convert the database instance to 3D Tiles using 3DCityDB Exporter.
   - Publish tiles on a CesiumJS viewer.
   - Use the attributes from FarmGML (e.g., crop type, sustainability index) for pop-ups or layer styling.

3. **QGIS**
   - Load the GML directly via *Layer → Add Layer → Add Vector Layer…*
   - Ensure the CityGML 3.0 + ADE plugin is active.
   - Inspect feature attributes and geometry consistency.

Validation success criteria:
- All features are parsed without schema errors.
- The ADE-specific attributes (farm:) are recognized in each environment.

---

## 📚 References
	•	3DCityDB ADE Manager
	•	CesiumJS (https://cesium.com/platform/cesiumjs)
	•	Van den Brink, L., Stoter, J., Zlatanova, S. (2013) – UML-Based Approach to Developing a CityGML Application Domain Extension. Transactions in GIS, 17(6): 920–942.
	•	OGC (2021) – CityGML 3.0 Conceptual Model Standard (OGC 20-010).
	•	ISO 19136 – Geography Markup Language (GML).
	•	ShapeChange Tool – UML-to-GML encoder implementing ISO encoding rules.
---
## 👤 Contact

| **Name** | Eng. Igor Quintão |
|-------|-------|
| **Organization** | UNIVERSIDADE FEDERAL DE VIÇOSA - UFV |
|-------|-------|
| **Email** | igor.quintao@ufv.br |
|-------|-------|
| **Version** | FarmGML ADE v1.3 |
|-------|-------|
| **Date** | 2025-10-25 |
|-------|-------|
---

## © 2025 FarmGML ADE Project — Licensed under CC BY 4.0
Developed using Model-Driven Architecture principles (UML → ShapeChange → XSD)

---
### 🏛️ Namespace Ownership

The official namespace URI for this ADE is:

**`https://igorquintao.github.io/FarmGML-ADE/schemas/1.3`**

It is maintained by **Eng. Igor Quintão** under GitHub Pages hosting.  
This URI resolves to the authoritative location of the FarmGML ADE schemas and documentation.
