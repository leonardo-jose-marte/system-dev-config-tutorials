# system-dev-config-tutorials
<!-- DESCRIPCIÓN CORTA PARA LA BARRA LATERAL DE GITHUB (ABOUT) -->
🚀 Central de guías paso a paso, scripts de automatización (PowerShell, Bash, Python, SQL) y configuraciones para instalar, reparar y optimizar entornos de desarrollo profesional.

---

# 🛠️ System Dev Config Tutorial (`system-dev-config-tutorial`)

Un repositorio centralizado con guías paso a paso, scripts de automatización, soluciones de errores comunes y configuraciones para preparar, optimizar y mantener un entorno de desarrollo profesional.

---

## 📌 Propósito del Repositorio

Este proyecto sirve como una base de conocimiento práctica y ejecutable asociada a tutoriales de desarrollo. Aquí encontrarás el código fuente, la documentación y los scripts necesarios para configurar herramientas del ecosistema de software sin dejar residuos ni lidiar con errores de entorno.

---

## 📂 Estructura del Repositorio

```text
system-dev-config-tutorial/
├── 📁 nodejs/
│   ├── node-clean-audit.ps1    # Script de diagnóstico y limpieza previa
│   └── node-setup.md           # Guía de instalación con NVM y package managers
├── 📁 sql-server/
│   ├── setup-check.ps1         # Verificación de servicios y requisitos
│   └── service-management.cmd  # Gestión manual de servicios en segundo plano
├── 📁 python/
│   └── venv-automation.ps1     # Configuración de entornos virtuales y PATH
└── 📁 scripts-utils/
    ├── 📁 powershell/
    ├── 📁 bash/
    ├── 📁 python/
    └── 📁 sql/
```

---

## ⚡ Contenido y Recursos

- **📜 Scripts de Terminal (PowerShell / Bash):** Automatización de tareas de instalación, auditorías de sistema, variables de entorno (`PATH`) y limpieza de registros.
- **🐍 Scripts de Python:** Herramientas auxiliares para verificación de entorno, gestión de dependencias y pruebas de integración.
- **🗄️ Scripts de SQL:** Scripts de configuración de instancias, consultas de diagnóstico y mantenimiento para laboratorios locales.
- **📚 Guías y Tutoriales:** Documentación paso a paso en formato Markdown lista para replicar en cualquier equipo.

---

## 🚀 Cómo Utilizar este Repositorio

1. **Clonar el repositorio:**
   ```powershell
   git clone [https://github.com/tu-usuario/system-dev-config-tutorial.git](https://github.com/tu-usuario/system-dev-config-tutorial.git)
   cd system-dev-config-tutorial
   ```

2. **Navegar a la herramienta deseada:**
   Explora las carpetas por tecnología (`nodejs`, `sql-server`, `python`, etc.) para acceder a sus respectivas guías y scripts.

3. **Ejecución de Scripts:**
   Asegúrate de revisar el contenido de los scripts antes de ejecutarlos y correr la terminal con privilegios suficientes (ej. PowerShell como Administrador cuando aplique).

---

## 🛡️ Principios de Configuración

- **Cero Residuos:** Verificación y limpieza antes de cualquier instalación.
- **Entorno Local Optimizado:** Control manual de servicios para no penalizar el rendimiento del sistema.
- **Verificabilidad:** Pruebas directas de funcionamiento ("Hola Mundo" / diagnósticos) tras completar cada setup.

---

🤝 **Contribuciones & Feedback:** Si encuentras algún script a optimizar o deseas proponer una nueva configuración, los Pull Requests son bienvenidos.
