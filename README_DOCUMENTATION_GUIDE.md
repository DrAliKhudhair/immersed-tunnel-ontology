# Immersed Tunnel Ontology Documentation Guide

> **🛠️ Developer Documentation** - Internal guide for ontology modification and documentation generation  
> **🎯 For Developers** - Complete workflow for updating ontology and regenerating documentation  
> **📖 End Users**: See main `README.md` for public documentation and downloads

## 🚀 **Complete Automation with regenerate_docs.bat**

Your enhanced `regenerate_docs.bat` script handles everything from documentation generation to GitHub Pages deployment automatically.

---

## ⚡ **QUICK START - After Updating Your Ontology**

### **Step 1: Run the Script**
```powershell
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"
.\regenerate_docs.bat
```

### **Step 2: Follow the Prompts**
```
[1/5] Cleaning old documentation... ✅ (Automatic)
[2/5] Checking Docker availability... ✅ (Automatic)  
[3/5] Generating new documentation... ✅ (Automatic)
[4/5] GitHub Pages deployment preparation...
    ❓ "Update docs/ folder for GitHub Pages deployment? (y/n):"
    👉 Answer: y
[5/5] Starting web server...
    ❓ "Start web server to view documentation locally? (y/n):"
    👉 Answer: y (optional)
```

### **Step 3: Deploy to GitHub**
```powershell
# The script shows these commands - copy and run them:
git add .
git commit -m "Update ontology documentation"
git push origin main
```

### **Step 4: Verify**
Wait 2-3 minutes: https://dralikhudhair.github.io/immersed-tunnel-ontology/modules_index.html

**That's it! 🎉**

---

## 📝 **Ontology Editing Guidelines**

### **Main Ontology File**
- Edit: `ontology/Immersed_Tunnel_Ontology_Modular.owl`
- Update imports when adding/removing modules

### **Module Files (19 total)**
- Edit any file in: `ontology/modulars/`
- Ensure proper XML structure:
```xml
<?xml version='1.0' encoding='utf-8'?>
<rdf:RDF xmlns="http://www.semanticweb.org/immersedTunnelOnto#" ...>
  <owl:Ontology rdf:about="http://www.semanticweb.org/immersedTunnelOnto/modulars/[module_name]">
    <!-- Content -->
  </owl:Ontology>
</rdf:RDF>
```

### **Adding New Modules**
1. Create new `.owl` file in `ontology/modulars/`
2. Add import to main ontology:
   ```xml
   <owl:imports rdf:resource="http://www.semanticweb.org/immersedTunnelOnto/modulars/new_module_name"/>
   ```

---

## 🛠️ **Troubleshooting**

### **Script Fails**
```powershell
# Ensure Docker is running
docker --version

# Check you're in the right directory
dir docker-compose.yml

# Run with admin rights if needed
```

### **GitHub Pages Not Updating**
```powershell
# Check GitHub Actions status
# Go to: https://github.com/DrAliKhudhair/immersed-tunnel-ontology/actions

# Force browser refresh: Ctrl+F5
```

### **Documentation Generation Fails**
```powershell
# Clean Docker cache
docker system prune -f
docker-compose build --no-cache

# Verify all .owl files have proper XML headers
```

---

## 📋 **Quick Reference**

### **Complete Workflow**
1. Edit ontology files
2. Run `.\regenerate_docs.bat`
3. Answer "y" to GitHub Pages
4. Execute git commands shown
5. Verify live site

### **Key Files**
- **Automation**: `regenerate_docs.bat` ⭐
- **Main Ontology**: `ontology/Immersed_Tunnel_Ontology_Modular.owl`
- **Modules**: `ontology/modulars/*.owl` (19 files)
- **GitHub Pages**: `docs/` (auto-updated by script)

### **URLs**
- **Local**: `http://localhost:8000/scripts/documentation/modules_index.html`
- **Live**: `https://dralikhudhair.github.io/immersed-tunnel-ontology/modules_index.html`

**Your `regenerate_docs.bat` script handles everything - just run it after editing your ontology!** 🚀 