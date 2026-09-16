# Guía de Configuración e Instalación de Node.js y Gestores de Paquetes con NVM

Guía paso a paso para gestionar versiones de Node.js mediante NVM en Windows, instalar gestores de paquetes y verificar el entorno.

---

## 1. Instalación y Activación de Node.js LTS

```powershell
# Listar las versiones de Node.js disponibles para descargar
nvm list available

# Instalar la versión LTS más reciente de Node.js
nvm install lts

# Listar las versiones instaladas localmente en el sistema
nvm list

# Activar la versión LTS para su uso global
nvm use lts
```

---

## 2. Confirmación de Instalación de NVM y Node.js

```powershell
# Verificar la versión de NVM instalada
nvm --version

# Confirmar que Node.js responde y muestra la versión activa
node --version
```

---

## 3. Instalación y Verificación de Gestores de Paquetes

```powershell
# Actualizar NPM a la última versión global
npm install -g npm@latest

# Confirmar la versión de NPM
npm --version

# Instalar PNPM de forma global
npm install -g pnpm

# Confirmar la versión de PNPM
pnpm --version

# Instalar Yarn de forma global
npm install -g yarn

# Confirmar la versión de Yarn
yarn --version
```

---

## 4. Prueba de Ejecución ("Hola Mundo")

```powershell
# Opción A: Ejecución directa por línea de comandos
node -e "console.log('¡Hola Mundo desde Node.js!')"

# Opción B: Crear, ejecutar y eliminar un archivo JavaScript de prueba
"console.log('¡Hola Mundo desde Node.js en Windows!');" | Out-File -Encoding utf8 app.js
node app.js
Remove-Item app.js
```
