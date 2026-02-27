# 🚀 INICIO RÁPIDO - AGENTE CLAUDE LISTO EN 3 PASOS

**¡INSTALA TODO EN 2 MINUTOS!** 🚀

---

## 🚀 PASO 1: DESCARGAR E INSTALAR (90 segundos)

### Opción A: PowerShell (RECOMENDADO)

1. **Abre PowerShell como Administrador**
   - Windows 11: Click derecho en el escritorio → "Windows Terminal (Admin)"
   - O presiona: `Win + X` luego `A`

2. **Copia y pega ESTO:**
```powershell
cd $env:USERPROFILE
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/gonzaloraknarok88/CLAUDE-HABILIDADES/main/install_claude_agent.ps1" -OutFile "install.ps1"
.\install.ps1
```

3. **Presiona ENTER y espera** ⏳
   - Se instalará TODO automáticamente
   - Tomará 2-3 minutos

---

## 📝 PASO 2: CONFIGURAR (30 segundos)

Despues de la instalación:

1. **Ve a tu carpeta de usuario**: `C:\Users\TuUsuario\CLAUDE-AGENT`
2. **Abre el archivo `.env`** con bloc de notas
3. **Busca esta línea:**
   ```
   COMPOSIO_API_KEY=tu_api_key_aqui
   ```
4. **Reemplaza `tu_api_key_aqui` con tu API key**
5. **Guarda el archivo** (Ctrl+S)

### 📚 ¿Cómo OBTENER tu API key?

1. Ve a: https://platform.composio.dev
2. Haz clic en **Sign Up** (es GRATIS)
3. Regístrate
4. Ve a **Settings** → **API Keys**
5. Haz clic en **Generate new API key**
6. **Copia la key** y pégala en el archivo `.env`
7. **Guarda**

---

## 🚀 PASO 3: ¡EJECUTAR! (10 segundos)

### Opción A: Desde PowerShell
```powershell
cd CLAUDE-AGENT
python claude_agent_composio.py
```

### Opción B: Con el script BAT
1. En la carpeta `CLAUDE-AGENT` busca: `run_agent.bat`
2. **Haz doble click**
3. ¡LISTO!

---

## 🎉 ¡YA ESTÁ FUNCIONANDO!

Deberias ver algo como:
```
============================================================
🤖 CLAUDE AGENT CON COMPOSIO
🔧 Todas las funcionalidades integradas
📦 +1000 herramientas disponibles
============================================================

🚀 Inicializando Composio...
✅ Composio inicializado para usuario: gonzalo_workspace_user_001
✅ Sesión de Tool Router creada
✅ Herramientas cargadas
✅ Servidor MCP configurado

🎉 AGENTE CLAUDE LISTO PARA USAR
```

---

## 👉 PRÓXIMOS PASOS

Ya que el agente está funcionando:

1. **Prueba comandos simples:**
   ```
   Envía un email a test@ejemplo.com
   ```

2. **Conecta tus apps:**
   - Gmail
   - GitHub
   - Slack
   - Notion
   - Y +1000 más!

3. **Lee la documentación completa:** Ver `INSTRUCCIONES_AGENTE.md`

---

## 🐛 ERRORES COMUNES

### "Python no está instalado"
- Descarga de https://python.org
- Durante la instalación: **MARCA** "Add Python to PATH"
- Reinicia PowerShell

### "No encuentra el archivo .env"
- Asegúrate de estar en `CLAUDE-AGENT`
- Presiona `Ctrl+H` en el Explorador para ver archivos ocultos

### "ERROR: COMPOSIO_API_KEY not set"
- Edita `.env` y agrega tu API key
- Guarda el archivo
- Reinicia el agente

---

## 🐦 NECESITAS AYUDA?

1. **Lee:** `INSTRUCCIONES_AGENTE.md` (documentación completa)
2. **Visita:** https://docs.composio.dev
3. **Comunidad:** https://discord.gg/composio

---

## 📦 ARCHIVOS QUE OBTENDRÁS

```
CLAUDE-AGENT/
├─ claude_agent_composio.py      🤖 Agente principal
├─ .env                            📝 Config (EDITA ESTO)
├─ run_agent.bat                  🚀 Ejecutar rápido
├─ INSTRUCCIONES_AGENTE.md        📖 Guía completa
├─ venv/                          🐧 Ambiente virtual
└─ [otros archivos]
```

---

## 🎓 ¡CREADO PARA TI!

**Por:** Gonzalo Raknarok  
**Repo:** CLAUDE-HABILIDADES  
**Versión:** 1.0.0  
**Fecha:** 27 de Febrero de 2026

🚀 **AGENTE 100% FUNCIONAL Y LISTO PARA PRODUCCIÓN**
