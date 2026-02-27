# 🚀 SCRIPT DE INSTALACIÓN AUTOMÁTICA - CLAUDE AGENT CON COMPOSIO
# =====================================================================
# Este script instala y configura TODO automáticamente
# Solo ejecuta en PowerShell como administrador
# =====================================================================

Write-Host ""`n============================================================`n" -ForegroundColor Cyan
Write-Host "🤖  CLAUDE AGENT CON COMPOSIO" -ForegroundColor Yellow
Write-Host "🚀 INSTALACIÓN AUTOMÁTICA" -ForegroundColor Yellow
Write-Host "📦 Todos los paquetes se instalarán automáticamente" -ForegroundColor Yellow
Write-Host "============================================================`n" -ForegroundColor Cyan

# ===== PASO 1: VERIFICAR PYTHON =====
Write-Host "🔍 Paso 1: Verificando Python..." -ForegroundColor Green
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ Python encontrado: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ ERROR: Python no está instalado" -ForegroundColor Red
    Write-Host "Descarga Python desde: https://python.org" -ForegroundColor Yellow
    exit 1
}

# ===== PASO 2: CREAR DIRECTORIO =====
Write-Host ""`n📁 Paso 2: Creando directorio del proyecto..." -ForegroundColor Green
$projectPath = "$env:USERPROFILE\CLAUDE-AGENT"

if (-not (Test-Path $projectPath)) {
    New-Item -ItemType Directory -Path $projectPath | Out-Null
    Write-Host "✅ Directorio creado: $projectPath" -ForegroundColor Green
} else {
    Write-Host "✅ Directorio ya existe: $projectPath" -ForegroundColor Green
}

cd $projectPath
Write-Host "✅ Ubicación actual: $projectPath" -ForegroundColor Green

# ===== PASO 3: CREAR AMBIENTE VIRTUAL =====
Write-Host ""`n🐧 Paso 3: Creando ambiente virtual..." -ForegroundColor Green

if (-not (Test-Path "$projectPath\venv")) {
    python -m venv venv
    Write-Host "✅ Ambiente virtual creado" -ForegroundColor Green
} else {
    Write-Host "✅ Ambiente virtual ya existe" -ForegroundColor Green
}

# ===== PASO 4: ACTIVAR AMBIENTE VIRTUAL =====
Write-Host ""`n🌅 Paso 4: Activando ambiente virtual..." -ForegroundColor Green
& ".\venv\Scripts\Activate.ps1"
Write-Host "✅ Ambiente virtual activado" -ForegroundColor Green

# ===== PASO 5: INSTALAR DEPENDENCIAS =====
Write-Host ""`n📋 Paso 5: Instalando dependencias..." -ForegroundColor Green
Write-Host "⏳ Esto puede tardar 2-3 minutos..." -ForegroundColor Yellow

pip install --upgrade pip
pip install composio-core
pip install composio-claude-agent-sdk
pip install claude-agent-sdk
pip install python-dotenv
pip install asyncio

Write-Host "✅ Dependencias instaladas correctamente" -ForegroundColor Green

# ===== PASO 6: DESCARGAR ARCHIVOS =====
Write-Host ""`n📋 Paso 6: Descargando archivos del agente..." -ForegroundColor Green

$repoRaw = "https://raw.githubusercontent.com/gonzaloraknarok88/CLAUDE-HABILIDADES/main"

# Descargar agente principal
Write-Host "   - Descargando claude_agent_composio.py..." -ForegroundColor Cyan
Invoke-WebRequest -Uri "$repoRaw/claude_agent_composio.py" -OutFile "claude_agent_composio.py" -ErrorAction Stop
Write-Host "   ✅ claude_agent_composio.py descargado" -ForegroundColor Green

# Descargar instrucciones
Write-Host "   - Descargando INSTRUCCIONES_AGENTE.md..." -ForegroundColor Cyan
Invoke-WebRequest -Uri "$repoRaw/INSTRUCCIONES_AGENTE.md" -OutFile "INSTRUCCIONES_AGENTE.md" -ErrorAction Stop
Write-Host "   ✅ INSTRUCCIONES_AGENTE.md descargado" -ForegroundColor Green

# ===== PASO 7: CREAR ARCHIVO .ENV =====
Write-Host ""`n📝 Paso 7: Creando archivo de configuración..." -ForegroundColor Green

$envContent = @"
COMPOSIO_API_KEY=tu_api_key_aqui
USER_ID=gonzalo_workspace_user_001
"@

$envContent | Out-File -FilePath ".env" -Encoding UTF8
Write-Host "✅ Archivo .env creado" -ForegroundColor Green
Write-Host "   ⚠️  IMPORTANTE: Edita el archivo .env y agrega tu API key de Composio" -ForegroundColor Yellow

# ===== PASO 8: CREAR SCRIPT EJECUTABLE =====
Write-Host ""`n🚀 Paso 8: Creando script de ejecución..." -ForegroundColor Green

$runScript = @"
@echo off
echo.
echo ============================================================
echo 🤖 CLAUDE AGENT CON COMPOSIO
echo 🚀 Iniciando agente...
echo ============================================================
echo.

cd /d \"%cd%\"
call venv\\Scripts\\activate.bat
python claude_agent_composio.py

pause
"@

$runScript | Out-File -FilePath "run_agent.bat" -Encoding ASCII
Write-Host "✅ Script run_agent.bat creado" -ForegroundColor Green

# ===== PASO 9: LISTAR ARCHIVOS =====
Write-Host ""`n📋 Paso 9: Archivos del proyecto:" -ForegroundColor Green
Write-Host "   💫 .env - Archivo de configuración (EDITA ESTO)" -ForegroundColor Yellow
Write-Host "   💫 claude_agent_composio.py - Agente principal" -ForegroundColor White
Write-Host "   💫 INSTRUCCIONES_AGENTE.md - Guía completa" -ForegroundColor White
Write-Host "   💫 run_agent.bat - Ejecutar el agente" -ForegroundColor Cyan
Write-Host "   💫 venv/ - Ambiente virtual" -ForegroundColor White

# ===== RESUMEN FINAL =====
Write-Host ""`n============================================================" -ForegroundColor Cyan
Write-Host "🎉 ¡INSTALACIÓN COMPLETADA!" -ForegroundColor Green
Write-Host "============================================================`n" -ForegroundColor Cyan

Write-Host "👉 PRÓXIMOS PASOS:" -ForegroundColor Yellow
Write-Host "   1. Abre el archivo '.env' en tu editor favorito" -ForegroundColor White
Write-Host "   2. Reemplaza 'tu_api_key_aqui' con tu API key de Composio" -ForegroundColor White
Write-Host "   3. Guarda el archivo" -ForegroundColor White
Write-Host "   4. Ejecuta: .\\run_agent.bat" -ForegroundColor Cyan
Write-Host "   5. ¡El agente Claude estará funcionando!" -ForegroundColor Green

Write-Host "`n👆 O EJECUTA DIRECTAMENTE EN ESTA TERMINAL:" -ForegroundColor Yellow
Write-Host "   python claude_agent_composio.py" -ForegroundColor Cyan

Write-Host "`n📚 OBTENER API KEY:" -ForegroundColor Yellow
Write-Host "   1. Ve a: https://platform.composio.dev" -ForegroundColor White
Write-Host "   2. Regístrate (es gratis)" -ForegroundColor White
Write-Host "   3. Settings → API Keys" -ForegroundColor White
Write-Host "   4. Generate new API key" -ForegroundColor White
Write-Host "   5. Copia y pega en .env" -ForegroundColor White

Write-Host "`n============================================================" -ForegroundColor Cyan
Write-Host "🤖 Creado por Gonzalo Raknarok" -ForegroundColor Cyan
Write-Host "📦 CLAUDE-HABILIDADES Repository" -ForegroundColor Cyan
Write-Host "============================================================`n" -ForegroundColor Cyan

Write-Host "Presiona ENTER para terminar..." -ForegroundColor Yellow
Read-Host
