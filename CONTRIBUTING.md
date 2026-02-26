# Contribuyendo a CLAUDE-HABILIDADES

Primero, gracias por tu interés en contribuir a este repositorio. Esta es una copia espejo del repositorio [awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) de ComposioHQ.

## ¿Cuál es el propósito?

Este repositorio es un espejo completo de las excelentes habilidades de Claude. Los principales contribuyentes son el equipo de ComposioHQ. Este repositorio se mantiene como referencia local.

## Cómo Contribuir

### Para Nuevas Habilidades

1. **Verifica que la habilidad sea única**
   - Busca en el repositorio para asegurar que no existe ya
   - Revisa los PRs abiertos para evitar duplicados

2. **Crea la estructura de carpetas**
   ```
   skill-name/
   ├── SKILL.md          # Requerido: Metadatos e instrucciones
   ├── scripts/          # Opcional: Scripts auxiliares
   ├── templates/        # Opcional: Plantillas
   └── resources/        # Opcional: Archivos de referencia
   ```

3. **Escribe el SKILL.md**
   ```yaml
   ---
   name: skill-name
   description: Breve descripción
   ---

   # Skill Name

   Descripción detallada...

   ## When to Use
   - Caso de uso 1
   - Caso de uso 2

   ## Instructions
   [Instrucciones para Claude]

   ## Examples
   [Ejemplos del mundo real]
   ```

4. **Prueba tu habilidad**
   - En Claude.ai
   - En Claude Code
   - Via API

5. **Envía un Pull Request**
   - Incluye una descripción clara
   - Explica el caso de uso
   - Referencia cualquier documentación relevante

### Estándares de Calidad

- Enfocarse en tareas específicas y repetibles
- Incluir ejemplos claros
- Documentar casos límite
- Escribir instrucciones para Claude, no para usuarios finales
- Incluir manejo de errores
- Documentar dependencias y requisitos previos

## Proceso de Pull Request

1. Fork el repositorio
2. Crea una rama (`git checkout -b feat/my-skill`)
3. Haz commit de tus cambios (`git commit -am 'Add my skill'`)
4. Push a la rama (`git push origin feat/my-skill`)
5. Abre un Pull Request

## Código de Conducta

Este proyecto se rige por un Código de Conducta. Al participar, se espera que sigas estos estándares:

- Ser respetuoso con otros contribuyentes
- Aceptar crítica constructiva
- Enfocarse en lo mejor para la comunidad
- Reportar comportamiento inapropiado

## Preguntas?

- Abre un Issue para discutir cambios importantes
- Consulta la documentación de [Claude Skills](https://support.claude.com/)
- Contacta a support@composio.dev para preguntas

## Licencia

Al contribuir, aceptas que tus contribuciones se licencien bajo Apache 2.0.

---

**Nota**: Este es un repositorio espejo. Para contribuciones principales, consulta el repositorio original en [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills)
