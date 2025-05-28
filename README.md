# Immersed Tunnel Engineering Ontology - IFC4.3 Ready

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Documentation](https://img.shields.io/badge/Documentation-Live-green.svg)](https://your-username.github.io/immersed-tunnel-ontology/)
[![Version](https://img.shields.io/badge/Version-3.1.3-blue.svg)](https://github.com/your-username/immersed-tunnel-ontology/releases)

## 📖 **Overview**

A comprehensive modular ontology for immersed tunnel engineering projects, designed to support IFC4.3 standardization efforts. This ontology provides a complete knowledge model covering all aspects of tunnel design, construction, operation, and maintenance.

## 🌐 **Online Documentation**

**➡️ [View Live Documentation](https://your-username.github.io/immersed-tunnel-ontology/)**

### Quick Links:
- 📋 [Main Documentation](https://your-username.github.io/immersed-tunnel-ontology/index-en.html)
- 🎯 [Interactive WebVowl Visualization](https://your-username.github.io/immersed-tunnel-ontology/webvowl/index.html)
- 📁 [Download Ontology Files](https://github.com/your-username/immersed-tunnel-ontology/tree/main/ontology)

## 🏗️ **Modular Architecture**

The ontology features **19 specialized modules** organized in three categories:

### **Foundation Modules (4)**
- **Core**: Fundamental concepts and base classes
- **Taxonomy**: Classification hierarchies
- **Mereology**: Part-whole relationships  
- **Properties**: Base properties and relationships

### **System Modules (6)**
- **Safety & Emergency**: Safety systems and emergency procedures
- **Mechanical & Electrical**: MEP systems and equipment
- **Drainage & Utilities**: Water management and utility systems
- **Monitoring & Instrumentation**: Sensor networks and monitoring
- **Facilities**: Temporary and permanent facilities
- **Traffic & Transportation**: Vehicle and pedestrian systems

### **Technical & Management Modules (9)**
- **Engineering Design & Analysis**: Design processes and analysis methods
- **Construction Processes & Methods**: Construction workflows and techniques
- **Site & Environmental Systems**: Environmental management
- **Geotechnical & Foundation Systems**: Ground conditions and foundations
- **Structural Systems**: Structural engineering concepts
- **Structural Systems Components**: Detailed structural elements
- **Materials & Quality Systems**: Material specifications and QA/QC
- **Maintenance & Operations**: O&M procedures and lifecycle management
- **Spatial Extensions**: Geometric and spatial relationships

## 📂 **Repository Structure**

```
├── docs/                          # Published documentation (GitHub Pages)
│   ├── index-en.html             # Main documentation page
│   ├── webvowl/                  # Interactive visualization
│   ├── sections/                 # Sectioned documentation
│   └── ontology.*               # Multiple serialization formats
├── ontology/                      # Source ontology files
│   ├── Immersed_Tunnel_Ontology_Modular.owl  # Main ontology
│   ├── modulars/                 # Individual modules
│   └── catalog-v001.xml          # Catalog file
├── scripts/                       # Documentation generation scripts
└── examples/                      # Usage examples and mappings
```

## 🚀 **Quick Start**

### **For End Users:**
1. Visit the [online documentation](https://your-username.github.io/immersed-tunnel-ontology/)
2. Browse the interactive WebVowl visualization
3. Download ontology files in your preferred format

### **For Developers:**
1. Clone this repository: `git clone https://github.com/your-username/immersed-tunnel-ontology.git`
2. Load `ontology/Immersed_Tunnel_Ontology_Modular.owl` in your preferred ontology editor
3. Import individual modules from `ontology/modulars/` as needed

## 📥 **Download Options**

The ontology is available in multiple formats:

- **OWL/XML**: [ontology.owl](https://your-username.github.io/immersed-tunnel-ontology/ontology.owl)
- **Turtle**: [ontology.ttl](https://your-username.github.io/immersed-tunnel-ontology/ontology.ttl)
- **JSON-LD**: [ontology.jsonld](https://your-username.github.io/immersed-tunnel-ontology/ontology.jsonld)
- **N-Triples**: [ontology.nt](https://your-username.github.io/immersed-tunnel-ontology/ontology.nt)

## 🛠️ **Development**

### **Prerequisites**
- Docker (for documentation generation)
- Git
- Ontology editor (Protégé recommended)

### **Regenerate Documentation**
```bash
# Clone repository
git clone https://github.com/your-username/immersed-tunnel-ontology.git
cd immersed-tunnel-ontology

# Generate documentation
./scripts/generate-clean-docs.ps1

# Serve locally
./scripts/serve-docs.ps1
```

## 📋 **Version History**

- **v3.1.3** (Current) - IFC4.3 ready version with complete modular architecture
- **v3.1.2** - Enhanced structural systems and components
- **v3.1.0** - Major modular reorganization

## 🤝 **Contributing**

We welcome contributions! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 **License**

This work is licensed under [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

## 📞 **Contact**

- **Author**: Khalid Elemam
- **Institution**: University Research Center
- **Email**: [Add your email]
- **ORCID**: [Add your ORCID if available]

## 🙏 **Acknowledgments**

- IFC4.3 Working Group at buildingSMART International
- WIDOCO Development Team (Universidad Politécnica de Madrid)
- Infrastructure Research Grant Program

## 🔗 **Related Projects**

- [IFC4.3 Infrastructure Extensions](https://www.buildingsmart.org/standards/bsi-standards/industry-foundation-classes/)
- [WIDOCO Documentation Generator](https://github.com/dgarijo/Widoco)
- [Building Information Modeling Standards](https://www.iso.org/standard/74742.html)

---

**🌟 Star this repository if you find it useful!** 