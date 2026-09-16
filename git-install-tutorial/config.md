## COMANDOS DE GIT PARA CONFIGURAR CONEXIÓN CON RAMA REMOTA & LOCAL

<br>

# =========================================
# INSTALACIÓN DE GIT EN WINDOWS
# =========================================
```bash
winget install --id Git.Git -e --source winget
```



```bash
# 1. Configurar nombre de usuario y correo (usar los mismos datos de tu cuenta de GitHub)
git config --global user.name "TuNombreDeUsuario"
git config --global user.email "tu-email@ejemplo.com"

# 2. Configurar la rama principal por defecto como 'main'
git config --global init.defaultBranch main

# 3. Confirmar y verificar la configuración global aplicada
git config --global --list

# 4. Comprobar datos individuales específicamente
git config user.name
git config user.email
```
---
<br>

# ========================================
# INSTALACIÓN DE GIT EN DISTRIBUCIONES LINUX Y SISTEMAS UNIX
# ========================================

### Debian/Ubuntu

For the latest stable version for your release of Debian/Ubuntu:

```bash
sudo apt-get install git
```

For Ubuntu, this PPA provides the latest stable upstream Git version:

```bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt update && sudo apt install git
```

---

### Fedora

```bash
# Up to Fedora 21
sudo yum install git

# Fedora 22 and later
sudo dnf install git
```

---

### Gentoo

```bash
sudo emerge --ask --verbose dev-vcs/git
```

---

### Arch Linux

```bash
sudo pacman -S git
```

---

### openSUSE

```bash
sudo zypper install git
```

---

### Mageia

```bash
sudo urpmi git
```

---

### Nix/NixOS

```bash
nix-env -i git
```

---

### FreeBSD

```bash
sudo pkg install git
```

---

### Solaris 9/10/11 (OpenCSW)

```bash
pkgutil -i git
```

---

### Solaris 11 Express, OpenIndiana

```bash
pkg install developer/versioning/git
```

---

### OpenBSD

```bash
pkg_add git
```

---

### Alpine

```bash
apk add git
```

---

### Red Hat Enterprise Linux, Oracle Linux, CentOS, Scientific Linux, et al.

RHEL and derivatives typically ship older versions of git. You can [download a tarball](https://www.kernel.org/pub/software/scm/git/) and build from source, or use a 3rd-party repository such as [the IUS Community Project](https://ius.io/) to obtain a more recent version of git.

---

### Slitaz

```bash
tazpkg get-install git
```
---
<br>

# ========================================
# INSTALACIÓN DE GIT EN macOs
# ========================================
There are several options for installing Git on macOS. Note that any non-source distributions are provided by third parties, and may not be up to date with the latest source release.

---

### Homebrew

Install Homebrew if you don't already have it, then:

```bash
brew install git
```

---

### MacPorts

Install MacPorts if you don't already have it, then:

```bash
sudo port install git
```

---

### Xcode Command Line Tools

Apple ships a binary package of Git with Xcode Command Line Tools. You can install this via:

```bash
xcode-select --install
```

---

### Binary Installer

Tim Harper provided an installer for Git until version 2.33.0 / 2021. These installers are no longer linked from here because there are no updates since that version, nor are there plans to provide any.

---

### Installing git-gui

If you would like to install `git-gui` and `gitk`, Git's commit GUI and interactive history browser, you can do so using Homebrew:

```bash
brew install git-gui
```
