# Immersed Tunnel Ontology Documentation Guide

## 📖 Complete Documentation Generation & Update Guide

This guide provides step-by-step instructions for generating and updating your **Immersed Tunnel Ontology Documentation** using WIDOCO and Docker.

---

## 🚀 **Part 1: Running the Documentation for the First Time**

### **Prerequisites**
- ✅ Docker Desktop installed and running
- ✅ Python 3.x installed
- ✅ PowerShell or Command Prompt access
- ✅ Web browser (Chrome, Firefox, Edge, etc.)

### **Step 1: Navigate to Project Directory**
```powershell
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"
```

### **Step 2: Verify Project Structure**
Ensure your directory structure looks like this:
```
onto-02-first standard/
├── ontology/
│   ├── Immersed_Tunnel_Ontology_Modular.owl    # Main ontology file
│   └── modulars/                                # Individual module files
│       ├── core.owl
│       ├── taxonomy.owl
│       ├── meronomy.owl
│       ├── properties.owl
│       ├── structural_systems.owl
│       ├── [... 14 other module files]
├── scripts/
│   ├── entrypoint.sh
│   ├── start_webvowl_server.bat
│   └── documentation/                           # Generated docs (created after running)
├── docker-compose.yml
├── Dockerfile
└── README_DOCUMENTATION_GUIDE.md
```

### **Step 3: Generate Documentation**
```powershell
docker-compose up
```

**Expected Output:**
- ✅ Processing 20 ontology modules
- ✅ "Documentation generation completed!"
- ✅ "DOCUMENTATION GENERATION COMPLETE!"

### **Step 4: Start Web Server**
```powershell
python -m http.server 8000
```

### **Step 5: Access Documentation**
Open your web browser and navigate to:

**🏠 Main Documentation:**
```
http://localhost:8000/scripts/documentation/index-en.html
```

**📋 Modules Index:**
```
http://localhost:8000/scripts/documentation/modules_index.html
```

**🎨 Interactive WebVOWL:**
```
http://localhost:8000/scripts/documentation/webvowl/
```

### **Step 6: Stop Services When Done**
- **Stop Web Server:** Press `Ctrl+C` in the terminal
- **Stop Docker:** `docker-compose down` (if containers are still running)

---

## 🔄 **Part 2: Updating Documentation After Ontology Changes**

### **Scenario A: Updated Main Ontology File Only**
If you only modified `ontology/Immersed_Tunnel_Ontology_Modular.owl`:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Clean old documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# 3. Regenerate documentation
docker-compose up

# 4. Start web server
python -m http.server 8000
```

### **Scenario B: Updated Module Files in `modulars/` Directory**
If you modified any `.owl` files in `ontology/modulars/`:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Verify all module files have proper XML structure
# (Each .owl file should start with <?xml version='1.0' encoding='utf-8'?>)

# 3. Clean old documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# 4. Regenerate documentation
docker-compose up

# 5. Start web server
python -m http.server 8000
```

### **Scenario C: Major Changes to Multiple Files**
For extensive updates to both main ontology and modules:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Validate all OWL files (optional but recommended)
# Check that each .owl file in ontology/modulars/ has:
# - Proper XML header: <?xml version='1.0' encoding='utf-8'?>
# - RDF namespace declarations
# - Proper closing </rdf:RDF> tag

# 3. Clean everything and rebuild
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue
docker-compose down
docker-compose up --build

# 4. Start web server
python -m http.server 8000
```

---

## 🛠️ **Part 3: Troubleshooting Common Issues**

### **Issue 1: "File not found" Errors**
**Symptoms:** Docker cannot find ontology files
**Solution:**
```powershell
# Check file paths are correct
ls ontology/
ls ontology/modulars/

# Ensure you're in the right directory
pwd
# Should show: C:\Users\khudh\Desktop\onto-04\onto-02-first standard
```

### **Issue 2: XML Parsing Errors**
**Symptoms:** WIDOCO fails to parse specific .owl files
**Solution:**
1. Check that each `.owl` file starts with proper XML header
2. Verify namespace declarations are present
3. Ensure closing `</rdf:RDF>` tag exists

**Example of proper .owl file structure:**
```xml
<?xml version='1.0' encoding='utf-8'?>
<rdf:RDF xmlns="http://www.semanticweb.org/immersedTunnelOnto#" 
         xmlns:owl="http://www.w3.org/2002/07/owl#" 
         xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
         xmlns:xsd="http://www.w3.org/2001/XMLSchema#" 
         xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
  <owl:Ontology rdf:about="http://www.semanticweb.org/immersedTunnelOnto/modulars/[module_name]">
    <!-- Ontology content -->
  </owl:Ontology>
  <!-- Classes, properties, etc. -->
</rdf:RDF>
```

### **Issue 3: Port 8000 Already in Use**
**Symptoms:** "Address already in use" when starting web server
**Solution:**
```powershell
# Use a different port
python -m http.server 8001

# Or find and kill process using port 8000
netstat -ano | findstr :8000
# Then kill the process ID shown
```

### **Issue 4: Docker Build Failures**
**Symptoms:** Docker image build errors
**Solution:**
```powershell
# Clean Docker cache and rebuild
docker system prune -f
docker-compose build --no-cache
docker-compose up
```

---

## 📝 **Part 4: Quick Reference Commands**

### **Full Regeneration (Recommended for Updates)**
```powershell
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue
docker-compose up
python -m http.server 8000
```

### **Access URLs**
- **Main Docs:** `http://localhost:8000/scripts/documentation/index-en.html`
- **Module Index:** `http://localhost:8000/scripts/documentation/modules_index.html`
- **WebVOWL:** `http://localhost:8000/scripts/documentation/webvowl/`
- **Individual Modules:** `http://localhost:8000/scripts/documentation/modules/`

### **Cleanup Commands**
```powershell
# Stop all services
docker-compose down

# Clean documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# Clean Docker cache (if needed)
docker system prune -f
```

---

## 🎯 **Part 5: Automation Script (Optional)**

Create a batch file `regenerate_docs.bat` for easy updates:

```batch
@echo off
echo Regenerating Immersed Tunnel Ontology Documentation...
echo.

REM Navigate to project directory
cd /d "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

REM Clean old documentation
echo Cleaning old documentation...
if exist "scripts\documentation" rmdir /s /q "scripts\documentation"

REM Regenerate documentation
echo Generating new documentation...
docker-compose up

REM Ask user if they want to start web server
echo.
set /p answer=Start web server? (y/n): 
if /i "%answer%"=="y" (
    echo Starting web server on http://localhost:8000
    echo Press Ctrl+C to stop the server when done.
    python -m http.server 8000
)

pause
```

---

## ✅ **Summary Checklist**

### **For First-Time Setup:**
- [ ] Docker Desktop running
- [ ] Navigate to project directory
- [ ] Run `docker-compose up`
- [ ] Start web server with `python -m http.server 8000`
- [ ] Access docs at `http://localhost:8000/scripts/documentation/index-en.html`

### **For Future Updates:**
- [ ] Navigate to project directory
- [ ] Clean old docs: `Remove-Item -Recurse -Force scripts\documentation\*`
- [ ] Regenerate: `docker-compose up`
- [ ] Restart web server: `python -m http.server 8000`
- [ ] Verify docs are updated

---

**🎉 Your Immersed Tunnel Ontology Documentation is now ready for use and future updates!** 