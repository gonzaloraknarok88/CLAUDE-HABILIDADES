# CLAUDE-HABILIDADES

Copia completa y espejo del repositorio [awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) de ComposioHQ.

Una lista seleccionada de excelentes habilidades, recursos y herramientas de Claude para personalizar los flujos de trabajo de IA de Claude.

## ¿Qué son las Habilidades de Claude?

Las Habilidades de Claude son flujos de trabajo personalizables que le enseñan a Claude a realizar tareas específicas según sus requisitos específicos.

## Contenido Principal

Este repositorio contiene:

### Habilidades Principales
- Procesamiento de Documentos
- Herramientas de Desarrollo
- Datos y Análisis
- Negocios y Marketing
- Comunicación y Escritura
- Creatividad y Medios
- Productividad y Organización
- Colaboración y Gestión de Proyectos
- Seguridad y Sistemas
- Automatización de Aplicaciones

### Automatización de Aplicaciones (78+ integraciones SaaS)

Integraciones pre-construidas con más de 500 aplicaciones:
- CRM: Salesforce, HubSpot, Pipedrive, Zoho CRM, Close
- Gestión de Proyectos: Asana, Jira, Monday.com, Linear, Trello, Notion, ClickUp
- Comunicación: Slack, Gmail, Discord, Microsoft Teams, WhatsApp, Telegram
- Almacenamiento: Google Drive, Dropbox, OneDrive, Box
- Bases de Datos: Airtable, Google Sheets, Coda
- Desarrollo: GitHub, GitLab, CircleCI, Vercel, Datadog, Sentry
- Marketing: Mailchimp, Klaviyo, HubSpot, Brevo
- E-commerce: Shopify, Stripe, Square
- Y muchas más...

## Primeros Pasos

### Usar Habilidades en Claude.ai
1. Haz clic en el ícono de habilidades (🧩)
2. Agrega habilidades del marketplace o carga personalizadas
3. Claude activa automáticamente las habilidades relevantes

### Usar Habilidades en Claude Code
```bash
mkdir -p ~/.config/claude-code/skills/
cp -r skill-name ~/.config/claude-code/skills/
head ~/.config/claude-code/skills/skill-name/SKILL.md
claude
```

### Usar Habilidades via API
```python
import anthropic

client = anthropic.Anthropic(api_key="your-api-key")
response = client.messages.create(
    model="claude-3-5-sonnet-20241022",
    skills=["skill-id-here"],
    messages=[{"role": "user", "content": "Your prompt"}]
)
```

## Estructura de Habilidades

Cada habilidad es una carpeta que contiene:
```
skill-name/
├── SKILL.md          # Metadatos e instrucciones
├── scripts/          # Scripts auxiliares
├── templates/        # Plantillas
└── resources/        # Archivos de referencia
```

## Crear Nuevas Habilidades

Ver la documentación oficial en [https://support.claude.com/](https://support.claude.com/en/articles/12512198-creating-custom-skills)

## Contribuir

Ver [CONTRIBUTING.md](CONTRIBUTING.md) para:
- Cómo enviar nuevas habilidades
- Estándares de calidad
- Proceso de Pull Request
- Código de conducta

## Recursos

### Documentación Oficial
- [Claude Skills Overview](https://www.anthropic.com/news/skills)
- [Skills User Guide](https://support.claude.com/en/articles/12512180-using-skills-in-claude)
- [Creating Custom Skills](https://support.claude.com/en/articles/12512198-creating-custom-skills)
- [Skills API Documentation](https://docs.claude.com/en/api/skills-guide)

### Comunidad
- [Discord de Composio](https://discord.com/invite/composio)
- [Twitter/X @composio](https://x.com/composio)
- Preguntas: support@composio.dev

## Licencia

Apache 2.0 - Ver [LICENSE](LICENSE)

---

**Mirror de**: [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills)

**Creado por**: gonzaloraknarok88

**Fecha**: Febrero 2026
