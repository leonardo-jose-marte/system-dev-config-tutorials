# IMPLEMENTACIÓN DE MICROSOFT OFFICE PROFESSIONAL PLUS LTSC 2024

Guía paso a paso para descargar, configurar, instalar y activar **Microsoft Office LTSC Professional Plus 2024** de forma local utilizando las herramientas oficiales de implementación de Microsoft (ODT).

> **📺 Material de apoyo obligatorio:** Antes de iniciar, sigue la explicación detallada en el tutorial oficial en video:  
> **[Cómo Instalar y Activar Microsoft Office Professional Plus LTSC 2024 Paso a Paso (Minuto 12:55)](http://www.youtube.com/watch?v=bzSBKV63iGk&t=775s)**

---

## Documentación Oficial

* **Guía de implementación de Office LTSC 2024 (Microsoft Learn):**
  ```text
  [https://learn.microsoft.com/es-es/office/ltsc/2024/deploy](https://learn.microsoft.com/es-es/office/ltsc/2024/deploy)
  ```

---

## Requisitos Previos

* **Conexión a internet estable** durante toda la descarga e instalación.
* **Permisos de administrador** en el equipo Windows.
* **Carpeta de trabajo en ruta absoluta:** Crea una carpeta llamada `office` directamente en la raíz del disco local C (`C:\office`). Esto evita errores de ruta en la terminal.

---

## Pasos para la Instalación y Activación

### 1. Descargar Office Deployment Tool (ODT)

Descarga la herramienta oficial de implementación de Microsoft y guarda el archivo ejecutable dentro de tu carpeta `C:\office`:

```text
[https://www.microsoft.com/en-us/download/details.aspx?id=49117](https://www.microsoft.com/en-us/download/details.aspx?id=49117)
```

### 2. Crear el archivo de configuración (`Configuration.xml`)

Ingresa a la herramienta de personalización de Office en la web para generar tu perfil de instalación:

```text
[https://config.office.com/deploymentsettings](https://config.office.com/deploymentsettings)
```

**Ajustes recomendados dentro de la herramienta:**
1. **Arquitectura:** Selecciona `64 bits`.
2. **Suite de Office:** Elige **Office LTSC Professional Plus 2024 - Volume License** (opcionalmente puedes añadir *Visio* o *Project* si los necesitas).
3. **Aplicaciones:** Desmarca las que no utilices (por ejemplo, *Skype for Business* o *OneDrive Desktop* si ya viene con Windows).
4. **Idioma:** Selecciona tu idioma principal (ej. *Español internacional*).
5. **Exportar:** Haz clic en **Exportar**, selecciona el formato **Office Open XML**, nómbralo exactamente `Configuration.xml` y guárdalo en `C:\office`.

### 3. Extraer los archivos del ODT

1. Ve a `C:\office`, haz clic derecho sobre el ejecutable descargado (`officedeploymenttool_...exe`) y selecciona **Ejecutar como administrador**.
2. Acepta los términos y selecciona `C:\office` como carpeta de destino.
3. **Importante:** Elimina los archivos `.xml` de ejemplo que se extraen por defecto y deja únicamente `setup.exe` y tu archivo `Configuration.xml`.

### 4. Instalar Office LTSC 2024

1. Abre **PowerShell** o **Terminal de Windows** como **Administrador**.
2. Ubícate en el directorio de trabajo:
   ```powershell
   cd C:\office
   ```
3. Ejecuta el instalador indicando tu archivo de configuración:
   ```powershell
   .\setup.exe /configure Configuration.xml
   ```
4. Espera a que finalice la descarga e instalación en pantalla sin cerrar la terminal ni desconectar internet.

### 5. Activar Office mediante Scripts de Activación de Microsoft (MAS)

1. Con las aplicaciones de Office cerradas, abre una ventana de **PowerShell como Administrador**.
2. Ejecuta el siguiente comando para lanzar el asistente:
   ```powershell
   irm [https://get.activated.win](https://get.activated.win) | iex
   ```
3. En el menú interactivo:
   * Presiona la tecla **`2`** para seleccionar **Office**.
   * Presiona la tecla **`1`** para iniciar la activación.
4. Una vez confirmada la activación, cierra la ventana y abre Word o Excel para verificar el estado en **Archivo > Cuenta**.

---

## Notas Importantes y Solución de Problemas

* **No actualizar a Microsoft 365:** Dentro de cualquier aplicación de Office (*Archivo > Cuenta > Opciones de actualización*), evita forzar cambios de canal hacia versiones comerciales para mantener la estabilidad local de LTSC.
* **Error al iniciar aplicaciones (Servicio Click-to-Run):** Si tras instalar aparece un error que impide abrir Word o Excel, abre el **Panel de control** (`Win + R` → `control panel`), ve a **Programas y características**, selecciona **Microsoft Office LTSC Professional Plus 2024**, haz clic en **Cambiar** y ejecuta una **Reparación**.
