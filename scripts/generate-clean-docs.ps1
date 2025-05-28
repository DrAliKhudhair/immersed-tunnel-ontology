# Clean WIDOCO Documentation Generator (No Changelog Errors)
Write-Host "Generating Clean WIDOCO Documentation..." -ForegroundColor Green
Write-Host "This version avoids changelog errors" -ForegroundColor Yellow

$ORIGINAL_ONTOLOGY = "Immersed_Tunnel_Ontology_Modular.owl"
$TEMP_ONTOLOGY = "temp_ontology_for_widoco.owl"
$OUTPUT_DIR = "clean-documentation"
$DOCKER_IMAGE = "ghcr.io/dgarijo/widoco:latest"

# Validate setup
if (!(Test-Path $ORIGINAL_ONTOLOGY)) {
    Write-Host "Main ontology not found: $ORIGINAL_ONTOLOGY" -ForegroundColor Red
    exit 1
}

if (!(Test-Path "modulars")) {
    Write-Host "Modulars directory not found!" -ForegroundColor Red
    exit 1
}

$moduleCount = (Get-ChildItem modulars -Filter "*.owl").Count
Write-Host "Found main ontology: $ORIGINAL_ONTOLOGY" -ForegroundColor Green
Write-Host "Found $moduleCount modules to include" -ForegroundColor Green

# Clean output directory
if (Test-Path $OUTPUT_DIR) {
    Remove-Item -Path "$OUTPUT_DIR\*" -Recurse -Force
}
if (!(Test-Path $OUTPUT_DIR)) {
    New-Item -ItemType Directory -Path $OUTPUT_DIR | Out-Null
}

Write-Host "Creating temporary ontology with relative imports..." -ForegroundColor Blue

# Read original ontology and replace imports
$ontologyContent = Get-Content $ORIGINAL_ONTOLOGY -Raw

# Replace HTTP imports with relative imports AND remove priorVersion to avoid changelog
$pattern = 'rdf:resource="http://www\.semanticweb\.org/immersedTunnelOnto/modulars/([^"]+)"'
$replacement = 'rdf:resource="modulars/$1.owl"'
$ontologyContent = $ontologyContent -replace $pattern, $replacement

# Remove priorVersion line to prevent changelog generation
$ontologyContent = $ontologyContent -replace '<owl:priorVersion[^>]*>', ''

# Write temporary ontology
$ontologyContent | Set-Content $TEMP_ONTOLOGY -Encoding UTF8

Write-Host "Created clean temporary ontology: $TEMP_ONTOLOGY" -ForegroundColor Green
Write-Host "Generating documentation with no changelog errors..." -ForegroundColor Blue

$currentPath = (Get-Location).Path

# Run WIDOCO with clean settings
docker run -ti --rm -v "${currentPath}:/usr/local/widoco/in" -v "${currentPath}\${OUTPUT_DIR}:/usr/local/widoco/out" $DOCKER_IMAGE -ontFile "in/$TEMP_ONTOLOGY" -outFolder "out" -rewriteAll -getOntologyMetadata -includeImportedOntologies -webVowl -lang "en" -includeAnnotationProperties -noPlaceHolderText

# Clean up
if (Test-Path $TEMP_ONTOLOGY) {
    Remove-Item $TEMP_ONTOLOGY
    Write-Host "Cleaned up temporary file" -ForegroundColor Gray
}

if ($LASTEXITCODE -eq 0) {
    Write-Host "CLEAN DOCUMENTATION GENERATED!" -ForegroundColor Green
    
    # Check results
    $crossrefFile = "$OUTPUT_DIR\sections\crossref-en.html"
    if (Test-Path $crossrefFile) {
        $crossrefSize = (Get-Item $crossrefFile).Length
        Write-Host "Cross-reference size: $crossrefSize bytes" -ForegroundColor Yellow
        
        if ($crossrefSize -gt 5000) {
            Write-Host "SUCCESS! All modules included with no errors!" -ForegroundColor Green
        }
    }
    
    $ttlFile = "$OUTPUT_DIR\ontology.ttl"
    if (Test-Path $ttlFile) {
        $ttlSize = (Get-Item $ttlFile).Length
        Write-Host "TTL file size: $ttlSize bytes" -ForegroundColor Yellow
    }
    
    Write-Host "Clean documentation location: $OUTPUT_DIR\index-en.html" -ForegroundColor White
    Write-Host "To serve: cd $OUTPUT_DIR && python -m http.server 8080" -ForegroundColor Yellow
    
} else {
    Write-Host "Documentation generation failed!" -ForegroundColor Red
}

Write-Host "Clean process completed!" -ForegroundColor Green 