# 🏗️ Immersed Tunnel Engineering Ontology

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Documentation](https://img.shields.io/badge/Documentation-Live-blue.svg)](https://draliKhudhair.github.io/immersed-tunnel-ontology/)
[![Version](https://img.shields.io/badge/Version-4.0.0--GBT51318--2019-orange.svg)](https://github.com/DrAliKhudhair/immersed-tunnel-ontology/releases)

## 📖 **Overview**

A comprehensive modular ontology for immersed tunnel engineering projects, designed to support IFC4.3 standardization efforts and aligned with **GBT 51318-2019** Chinese National Standard for Immersed Tunnel Design. This ontology provides a complete knowledge model covering all aspects of tunnel design, construction, operation, and maintenance.

## 🌐 **Live Documentation**

**➡️ [View Live Documentation](https://draliKhudhair.github.io/immersed-tunnel-ontology/)**

### Quick Access Links:

* 📋 [Complete Modules Overview](https://draliKhudhair.github.io/immersed-tunnel-ontology/modules_index.html)
* 📖 [Main Documentation](https://draliKhudhair.github.io/immersed-tunnel-ontology/index-en.html)
* 🎯 [Interactive WebVOWL Visualization](https://draliKhudhair.github.io/immersed-tunnel-ontology/webvowl/)
* 📁 [Download Ontology Files](https://github.com/DrAliKhudhair/immersed-tunnel-ontology/tree/main/ontology)

## 🏗️ **Modular Architecture**

The ontology features **20 specialized modules** organized in three categories:

### 🔧 **Core Foundation Modules (4)**
- **Core**: Fundamental concepts and base classes
- **Taxonomy**: Classification hierarchies and taxonomic organization
- **Meronomy**: Part-whole relationships and spatial organization
- **Properties**: Base properties, relationships, and datatype specifications

### ⚙️ **System Modules (6)**
- **Safety & Emergency**: Fire protection, evacuation, and emergency response systems
- **Mechanical & Electrical**: MEP systems and operational equipment
- **Drainage & Utilities**: Water management and utility infrastructure systems
- **Monitoring & Instrumentation**: Sensor networks and performance monitoring
- **Facilities**: Temporary and permanent facility management systems
- **Traffic & Transportation**: Vehicle and pedestrian management systems

### 🛠️ **Technical & Management Modules (10)**
- **Engineering Design & Analysis**: Design methodologies and analysis frameworks
- **Construction Processes & Methods**: Construction workflows and methodologies
- **Site & Environmental Systems**: Environmental management and site conditions
- **Geotechnical & Foundation Systems**: Ground conditions and foundation engineering
- **Structural Systems**: Main structural engineering concepts and frameworks
- **Structural Systems Components**: Detailed structural elements and components
- **Materials & Quality Systems**: Material specifications and QA/QC procedures
- **Maintenance & Operations**: O&M procedures and lifecycle management
- **Immersed Tunnel Spatial Extensions**: Geometric and spatial relationship modeling

## 📂 **Repository Structure**

```
├── docs/                          # Published documentation (GitHub Pages)
│   ├── index.html                # Main landing page (redirects to modules_index.html)
│   ├── modules_index.html        # Beautiful modules overview page
│   ├── index-en.html             # Main WIDOCO documentation
│   ├── webvowl/                  # Interactive WebVOWL visualization
│   ├── modules/                  # Individual module documentation
│   │   ├── core/                 # Core module docs with WebVOWL
│   │   ├── taxonomy/             # Taxonomy module docs
│   │   └── ...                   # All 20 modules with complete documentation
│   └── resources/                # CSS, JS, and static assets
├── ontology/                      # Source ontology files
│   ├── Immersed_Tunnel_Ontology_Modular.owl  # Main integrated ontology
│   ├── modulars/                 # Individual module OWL files (20 modules)
│   ├── use-cases/               # Use case examples and mappings
│   └── catalog-v001.xml          # Ontology catalog file
├── scripts/                       # Documentation generation and automation
│   ├── documentation/            # Generated documentation source
│   ├── entrypoint.sh            # Docker entrypoint for documentation generation
│   └── ...                      # Additional automation scripts
├── docker-compose.yml            # Docker setup for documentation generation
├── Dockerfile                    # Docker configuration
└── README_DOCUMENTATION_GUIDE.md # Complete documentation guide
```

## 🚀 **Quick Start**

### **For End Users:**

1. 🌐 **Browse Online**: Visit [the live documentation](https://draliKhudhair.github.io/immersed-tunnel-ontology/)
2. 🎨 **Visualize**: Explore the [interactive WebVOWL visualization](https://draliKhudhair.github.io/immersed-tunnel-ontology/webvowl/)
3. 📥 **Download**: Get ontology files in your preferred format (OWL, TTL, JSON-LD, N-Triples)

### **For Developers:**

```bash
# Clone this repository
git clone https://github.com/DrAliKhudhair/immersed-tunnel-ontology.git
cd immersed-tunnel-ontology

# Load main ontology in your preferred editor
# File: ontology/Immersed_Tunnel_Ontology_Modular.owl

# Or import individual modules from:
# Directory: ontology/modulars/
```

### **For Researchers:**

```bash
# Generate fresh documentation
docker-compose up

# Serve documentation locally
python -m http.server 8000
# Access at: http://localhost:8000/scripts/documentation/modules_index.html
```

## 📥 **Download Options**

The complete ontology is available in multiple serialization formats:

- **🦉 OWL/XML**: `ontology.owl` - Native OWL format
- **🐢 Turtle**: `ontology.ttl` - Human-readable RDF format  
- **📋 JSON-LD**: `ontology.jsonld` - JSON-based linked data format
- **📄 N-Triples**: `ontology.nt` - Simple RDF triple format

## 🎯 **Standards Compliance**

### **Primary Standards:**
- **GBT 51318-2019**: Chinese National Standard for Immersed Tunnel Design (Primary Reference)
- **JTG 2120-2020**: Code for Design of Highway Tunnels (Supporting Reference)

### **International Standards:**
- **IFC4.3**: buildingSMART Infrastructure Extensions (Integration Ready)
- **ISO 19650**: Information management using building information modelling

## 🛠️ **Development & Contribution**

### **Prerequisites**
- Docker & Docker Compose (for documentation generation)
- Git (for version control)
- Ontology editor (Protégé recommended for OWL editing)

### **Documentation Generation**

```bash
# Using Docker (Recommended)
docker-compose up --build

# Using provided automation script
./regenerate_docs.bat

# Manual WIDOCO generation
java -jar widoco.jar -ontFile ontology/Immersed_Tunnel_Ontology_Modular.owl -outFolder docs/
```

### **Contributing**

1. 🍴 Fork the repository
2. 🌿 Create a feature branch (`git checkout -b feature/amazing-feature`)
3. 💾 Commit your changes (`git commit -m 'Add amazing feature'`)
4. 📤 Push to the branch (`git push origin feature/amazing-feature`)
5. 🔄 Open a Pull Request

## 📊 **Project Statistics**

- **📦 Total Modules**: 20 specialized modules
- **📄 Lines of OWL**: 15,000+ lines of semantic definitions
- **🔗 Concepts Modeled**: 500+ classes and properties
- **📚 Documentation Pages**: 100+ generated documentation pages
- **🎨 Visualizations**: Interactive WebVOWL for all modules

## 📋 **Version History**

- **v4.0.0-GBT51318-2019** (Current) - Complete GBT 51318-2019 compliant modular architecture
- **v3.3.0** - Enhanced structural systems and IFC4.3 readiness
- **v3.1.0** - Major modular reorganization and standards alignment

## 📞 **Contact & Support**

- **👨‍💻 Author**: Dr. Ali Khudhair
- **🏛️ Institution**: Engineering Research Center
- **📧 Email**: Contact via GitHub Issues
- **🔗 ORCID**: [Add your ORCID if available]

## 🙏 **Acknowledgments**

Special thanks to:
- **buildingSMART International** - IFC4.3 Working Group
- **Universidad Politécnica de Madrid** - WIDOCO Development Team  
- **Chinese National Standards Committee** - GBT 51318-2019 Specification
- **Infrastructure Research Grant Program** - Funding support

## 📄 **License**

This work is licensed under [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

You are free to:
- **Share** — copy and redistribute the material in any medium or format
- **Adapt** — remix, transform, and build upon the material for any purpose

## 🔗 **Related Projects**

- [IFC4.3 Infrastructure Extensions](https://www.buildingsmart.org/standards/bsi-standards/industry-foundation-classes/)
- [WIDOCO Documentation Generator](https://github.com/dgarijo/Widoco)
- [Building Information Modeling Standards](https://www.iso.org/standard/74039.html)

---

**⭐ Star this repository if you find it useful for your research or projects!**

[![GitHub stars](https://img.shields.io/github/stars/DrAliKhudhair/immersed-tunnel-ontology.svg?style=social&label=Star)](https://github.com/DrAliKhudhair/immersed-tunnel-ontology/stargazers) 