# FarmGML ADE 🚜
**Application Domain Extension**

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![OGC Standard](https://img.shields.io/badge/OGC-CityGML%203.0-blue.svg)](https://www.ogc.org/standard/citygml/)
![Version](https://img.shields.io/badge/version-1.3-blue)
![Validation](https://img.shields.io/badge/validation-OK-brightgreen)

---

**FarmGML** is an *Application Domain Extension (ADE)* of **CityGML 3.0**, designed to represent **rural enterprises, agricultural activities, and agro-environmental data** consistent with digital twin semantics.

It allows the integration of agricultural and environmental information into structures compatible with 3D models, spatial databases, WebGIS platforms (CesiumJS), and agroclimatic analytics systems.

It extends CityGML classes (such as `LandUse`, `Vegetation`, and `Building`) to model:
- Rural properties and agricultural enterprises  
- Crop areas, production cycles, and harvest lots  
- Risk and sustainability indicators  
- Integration with geospatial and remote-sensing data  

FarmGML enables integration between **3D city models**, **agricultural information systems**, **QGIS**, **3DCityDB**, and **CesiumJS** for **digital twins of rural areas**.

---

## Table of Contents
* [About the Project](#about-the-project)
* [Modeled Features](#modeled-features)
* [Version Information](#-version-information)
* [Validation Results](#-validation-results)
* [Workflow (MDA)](#-workflow-mda)
* [References](#-references)
* [Contact](#-contact)

---

## About the Project
The FarmGML ADE extends CityGML 3.0 to represent agricultural holdings (farms), crop areas, rural enterprises (livestock, aquaculture), agricultural operations, risk assessments (ZARC NM), and sustainability metrics.

This project follows the Model-Driven UML-to-XSD methodology and complies with the OGC CityGML 3.0 ADE design rules.

## Modeled Features
FarmGML is divided into modules, including:

* **Core (`farm-core.xsd`):** Defines the main `RuralProperty` feature (based on `luse:LandUse`) and basic data types (Person, Household, Farm Profile).
* **Enterprise (`farm-enterprise.xsd`):** Models different enterprises such as `LivestockEnterprise`, `AquacultureEnterprise`, and `ForestryEnterprise`.
* **Production (`farm-production.xsd`):** Defines `AnnualCropArea`, `PerennialCropArea` (based on `veg:PlantCover`), and `HarvestedLot`.
* **Operations (`farm-operations.xsd`):** Models events over time (e.g., planting, harvesting) using `AgriculturalOperation` (based on `dyn:AbstractDynamizer`).
* **Risk & Sustainability (`farm-risk.xsd`, `farm-sustainability.xsd`):** Adds generic attributes for Risk (ZARC) and sustainability metrics (carbon footprint, etc.) via the `core:genericAttribute` hook.
* **Temporal (`farm-temporal.xsd`):** Enables TimeSlices for features (based on `vers:AbstractVersion`).

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
| **Last Updated** | 2025-10-31 |
| **License** | Creative Commons Attribution 4.0 International (CC BY 4.0) |

---

## 🗂️ Repository Structure
```bash
FarmGML-ADE/
│
├── xsd/                  # FarmGML and modules (100% online)
│   ├── FarmGML_ADE_v1-3.xsd
│   │
│   └── modules/
│       ├── farm-core.xsd
│       ├── farm-hooks.xsd
│       ├── farm-enterprise.xsd
│       ├── farm-production.xsd
│       ├── farm-operations.xsd
│       ├── farm-risk.xsd
│       ├── farm-sustainability.xsd
│       ├── farm-temporal.xsd
│       └── farm-join.xsd
│
├── test_data/                  # Load the GML Test Data in QGIS
│   ├── example_ruralproperty.gml
│   ├── example_cropcycle.gml
│   ├── example_enterprise.gml
│   ├── examplo_macro_lod0_ruralproperty.gml
│   ├── examplo_meso_lod1_ruralproperty.gml
│   ├── v1_example_ruralproperty.gml
│   └── v2_example_ruralproperty.gml
│       
├── model/                  # UML/XMI source (conceptual model)
│   └── 1.3/
│       ├── FarmGML_v1.3.xmi
│       └── diagrams/
│
├── schemas/                # Generated schemas and examples (distribution 100% offline)
│   └── 1.3/
│       ├── FarmGML.xsd
│       ├── farm-core.xsd
│       ├── farm-hooks.xsd
│       ├── farm-enterprise.xsd
│       ├── farm-production.xsd
│       ├── farm-operations.xsd
│       ├── farm-risk.xsd
│       ├── farm-sustainability.xsd
│       ├── farm-temporal.xsd
│       ├── farm-join.xsd
│       │
│       ├── codelists/
│       │   ├── BuildingType.xml
│       │   ├── CropGrowthStage.xml
│       │   ├── EducationLevel.xml
│       │   ├── FeedingPractice.xml
│       │   ├── ForestryProductType.xml
│       │   ├── InputType.xml
│       │   ├── LandTenureType.xml
│       │   ├── MainLocationType.xml
│       │   ├── OperationType.xml
│       │   ├── RelationshipToHead.xml
│       │   ├── SeedVarietyType.xml
│       │   ├── Sex.xml
│       │   └── StorageType.xml 
│       │
│       ├── examples/
│       │   ├── example_ruralproperty.gml
│       │   ├── example_simp-ruralproperty.gml
│       │   ├── example_cropcycle.gml
│       │   └── example_enterprise.gml
│       ├── metadata/
│       │   └── farmgml-metadata.yaml
│       │
│       └── ogc/
│           ├── citygml/
│           │   ├── 3.0/
│           │   │   ├── core.xsd        
│           │   │   ├── landUse.xsd
│           │   │   ├── building.xsd
│           │   │   ├── vegetation.xsd
│           │   │   ├── generics.xsd
│           │   │   ├── dynamizer.xsd
│           │   │   └── versioning.xsd
│           │   └── xAL/
│           │       ├── xAL-types.xsd
│           │       └── xAL.xsd
│           │
│           └── gml/
│               └── 3.2.1/
│                   ├── gml.xsd
│                   └── xlinks.xsd
│
├── tools/                   # Automation and validation tools
│   ├── shapechange-config/
│   │   └── farmgml_1.3_config.xml
│   ├── scripts/
│   │   ├── generate-xsd-from-uml.bat
│   │   └── validate-xsd.sh
│   └── validation/
│       ├── validate_farmgml.py
│       ├── validate_report.html  
│       │
│       └── schematron/
│           └── farmgml_rules.sch
│
├── docs/                   # Documentation and policies
│   ├── specification/
│   │   ├── FarmGML_Conceptual_Model.pdf
│   │   ├── FarmGML_Encoding_Specification.pdf
│   │   └── FarmGML_UseCases.pdf
│   │
│   ├── schema-reference/
│   │   └── 1.3/
│   │       └── farmgml_rules.sch
│   │
│   └── policies/
│       └── namespace-policy.md
│
├── .ogc/                   # OGC submission metadata
│   ├── submission-manifest.yaml
│   ├── contact.json
│   └── ogc-registration.yaml
│
├── CHANGELOG.md
├── LICENSE.txt
└── README.md
```

---

## 🧠  Schema Modules

| Module                      | Description                                                                 |
| :-------------------------- | :-------------------------------------------------------------------------- |
| **farm-core.xsd**           | Defines the FarmGML core model (RuralProperty, LandUnit, FarmProfile, etc.) |
| **farm-enterprise.xsd**     | Models rural enterprises, their legal and structural attributes             |
| **farm-production.xsd**     | Defines productive areas (AnnualCropArea, PerennialCropArea, Pasture, etc.) |
| **farm-operations.xsd**     | Describes agricultural operations and temporal dynamizers                   |
| **farm-risk.xsd**           | Structures for insurance, risk indexes, and ZARC indicators                 |
| **farm-sustainability.xsd** | Environmental and sustainability indicators                                 |
| **farm-temporal.xsd**       | Temporal modeling based on `core:AbstractTimeSliceType`                     |
| **farm-hooks.xsd**          | ADE integration hooks for CityGML generic linkage                           |

---

## First Validation and Conformance

Validation was performed using `xmlschema 2.5.1` and `Python 3.11` via the script **`tools/validation/validate_farmgml.py`** below:
```bash
import xmlschema
from pathlib import Path

XSD_PATH = Path("schemas/1.3/FarmGML.xsd")
EXAMPLES_DIR = Path("schemas/1.3/examples")

schema = xmlschema.XMLSchema(XSD_PATH)

print(f"✅ Loaded schema: {XSD_PATH}")
print("🔍 Validating examples...\n")

for gml in EXAMPLES_DIR.glob("*.gml"):
    try:
        schema.validate(gml)
        print(f"{gml} : OK ✅")
    except xmlschema.XMLSchemaException as e:
        print(f"{gml} : Error ❌ -> {e.reason}")
```
---

## ✅ Validation Results
**`tools/validation/validate_report.html`**
| **GML File**                       | **Status** |
| ------------------------------ | :----: |
| example_cropcycle.gml          |  ✅ OK  |
| example_enterprise.gml         |  ✅ OK  |
| example_ruralproperty.gml      |  ✅ OK  |
| example_simp-ruralproperty.gml |  ✅ OK  |

## Conclusion:
All GML example files were successfully validated.
The `FarmGML.xsd` schema is fully compliant with **OGC CityGML 3.0 ADE** and **GML 3.2.1** standards.

---

## ⚙️ Model-Driven Architecture (MDA) Workflow

FarmGML adopts a **Model-Driven Architecture** approach.  
All schemas and documentation are generated from the UML conceptual model.

**Workflow summary:**
1. Model conceptual features in UML.
2. Export UML → XMI (`model/1.3/FarmGML_v1.3.xmi`).
3. Configure **ShapeChange** using `tools/shapechange-config/farmgml_1.3_config.xml`.
4. Run ShapeChange to generate XSD modules under `schemas/1.3/`.
5. Validate using the included `validate-xsd.sh` script.
6. Test instances (`example_ruralproperty.gml`) with **3DCityDB**, **CesiumJS**, and **QGIS**.

---

## Validation and Use Cases

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
