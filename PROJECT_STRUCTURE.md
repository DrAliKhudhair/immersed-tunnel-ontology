# 📁 Project Structure Overview

## 🎯 **Two-Sided Documentation Approach**

This project uses a clean separation between **public presentation** and **development workflow**:

### 🌐 **Public Side (End Users)**
- **File**: `README.md`
- **Purpose**: Professional presentation for ontology users
- **Audience**: Researchers, engineers, developers who want to **use** the ontology
- **Access**: GitHub repository main page
- **Content**: Overview, live documentation links, download options

### 🛠️ **Development Side (Internal)**
- **File**: `README_DOCUMENTATION_GUIDE.md`  
- **Purpose**: Technical guide for ontology modification
- **Audience**: Developers who want to **modify** the ontology
- **Access**: Local development environment
- **Content**: `regenerate_docs.bat` workflow, troubleshooting, editing guidelines

---

## 📂 **Complete Project Structure**

```
onto-02-first standard/
├── 📖 Public Documentation
│   ├── README.md                          # 🌐 End user documentation
│   ├── docs/                              # 🌐 GitHub Pages (auto-generated)
│   └── .github/workflows/                 # 🚀 GitHub Actions
│
├── 🛠️ Development Environment  
│   ├── README_DOCUMENTATION_GUIDE.md      # 👨‍💻 Developer workflow guide
│   ├── regenerate_docs.bat               # ⚡ Main automation script
│   ├── PROJECT_STRUCTURE.md              # 📁 This file
│   └── scripts/documentation/            # 📄 Local generated docs
│
├── 🧠 Ontology Source Files
│   ├── ontology/
│   │   ├── Immersed_Tunnel_Ontology_Modular.owl  # 🎯 Main ontology
│   │   └── modulars/                      # 📦 20 module files
│   │       ├── core.owl
│   │       ├── taxonomy.owl
│   │       └── [...17 other modules]
│
└── 🐳 Infrastructure
    ├── docker-compose.yml                # 🐳 WIDOCO automation
    ├── Dockerfile                        # 🐳 Documentation generation
    └── scripts/entrypoint.sh            # 🐳 Docker entrypoint
```

---

## 🔄 **Workflow Summary**

### **For End Users:**
1. Visit GitHub repository
2. Read `README.md` for overview
3. Click documentation link
4. Download ontology files

### **For Developers:**
1. Clone repository locally
2. Read `README_DOCUMENTATION_GUIDE.md`
3. Edit ontology files
4. Run `.\regenerate_docs.bat`
5. Push changes to GitHub

**🎯 Clean separation ensures optimal experience for both audiences!** 