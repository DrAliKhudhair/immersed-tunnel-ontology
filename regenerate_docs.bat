@echo off
echo =========================================
echo IMMERSED TUNNEL ONTOLOGY DOCUMENTATION
echo REGENERATION SCRIPT
echo =========================================
echo.

REM Navigate to project directory
cd /d "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

REM Check if we're in the right directory
if not exist "docker-compose.yml" (
    echo ERROR: docker-compose.yml not found!
    echo Please ensure this script is in the correct project directory.
    pause
    exit /b 1
)

echo Current directory: %CD%
echo.

REM Clean old documentation
echo [1/4] Cleaning old documentation...
if exist "scripts\documentation" (
    rmdir /s /q "scripts\documentation"
    echo     ✅ Old documentation removed
) else (
    echo     ℹ️  No existing documentation found
)
echo.

REM Check Docker is running
echo [2/4] Checking Docker availability...
docker --version >nul 2>&1
if errorlevel 1 (
    echo     ❌ Docker not found or not running!
    echo     Please start Docker Desktop and try again.
    pause
    exit /b 1
) else (
    echo     ✅ Docker is available
)
echo.

REM Regenerate documentation
echo [3/4] Generating new documentation...
echo     This may take a few minutes...
docker-compose up
if errorlevel 1 (
    echo     ❌ Documentation generation failed!
    echo     Check the error messages above.
    pause
    exit /b 1
) else (
    echo     ✅ Documentation generated successfully!
)
echo.

REM Ask user if they want to start web server
echo [4/4] Starting web server...
set /p answer=Start web server to view documentation? (y/n): 
if /i "%answer%"=="y" (
    echo.
    echo =========================================
    echo WEB SERVER STARTING
    echo =========================================
    echo.
    echo 🌐 Documentation will be available at:
    echo    📖 Main: http://localhost:8000/scripts/documentation/index-en.html
    echo    📋 Index: http://localhost:8000/scripts/documentation/modules_index.html
    echo    🎨 WebVOWL: http://localhost:8000/scripts/documentation/webvowl/
    echo.
    echo Press Ctrl+C to stop the server when done.
    echo =========================================
    echo.
    python -m http.server 8000
) else (
    echo.
    echo Documentation ready! To view later, run:
    echo   python -m http.server 8000
    echo Then visit: http://localhost:8000/scripts/documentation/index-en.html
)

echo.
echo =========================================
echo SCRIPT COMPLETED
echo =========================================
pause 