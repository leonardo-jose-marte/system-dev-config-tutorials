# IMPLEMENTACIÓN DE MICROSOFT OFFICE PROFESSIONAL PLUS LTSC 2024

---

## Web Oficial

```text
https://learn.microsoft.com/es-es/office/ltsc/2024/deploy
```

---

## PASOS PARA LA INSTALACIÓN Y ACTIVACIÓN DE MICROSOFT OFFICE PROFESSIONAL PLUS LTSC 2024

### 1. Office Deployment Tool

```text
https://www.microsoft.com/en-us/download/details.aspx?id=49117
```

### 2. Herramienta de personalización de Office

```text
https://config.office.com/deploymentsettings
```

### 3. Instalar Office LTSC 2024 mediante la herramienta de implementación de Office

```powershell
.\setup.exe /configure Configuration.xml
```

### 4. Scripts de activación de Microsoft (MAS)

```powershell
irm https://get.activated.win | iex
```
