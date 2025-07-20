# 🐍 Python-uni-template-basic

Plantilla minimalista para proyectos de Python, ideal para tareas universitarias, experimentos pequeños o desarrollo local ligero. Incluye soporte para entorno virtual, automatización con `make`, gestión de dependencias y una estructura de carpetas clara y ordenada.

>Nota: Este proyecto está desarrollado y probado principalmente en sistemas tipo Unix (Linux/macOS), en particular sobre Debian 12. Puede requerir adaptaciones si se desea utilizar en Windows.

---

## 📁 Estructura del proyecto

```txt
proyecto/
├── src/ # Código fuente principal
│ └── modules/ # Módulos adicionales reutilizables
│ │├── init.py
│ │└── utils.py
│ └── main.py # Punto de entrada del programa
├── .gitignore # Archivos y carpetas que no se suben al repo
├── Makefile # Comandos automatizados del entorno y la app
├── README.md # Este archivo :)
├── requirements.txt # Lista de dependencias del proyecto
└── setup_venv.sh # Script para crear y preparar el entorno virtual
```

---

## ⚙️ Requisitos

- Python 3 (o ajusta el `setup_venv.sh` si usas otra versión)
- El módulo `venv` para Python:
  - En Ubuntu/Debian: instala con `sudo apt install python3-venv` (para la versión por defecto)
  - O bien: `sudo apt install python3.11-venv` (si usas específicamente Python 3.11. Puedes comprobar tu versión mediante el comando `python3 --version`.)
- `make` (ya viene con la mayoría de distribuciones Linux y macOS)
- `bash` shell

---

## 🚀 Primeros pasos

### 1. Baja el template de GitHub

```bash
git clone https://github.com/Richardo2928/Python-uni-template-basic.git
# git@github.com:Richardo2928/Python-uni-template-basic.git # Uncoment for SSH
# gh repo clone Richardo2928/Python-uni-template-basic      # Uncoment for GitHub CLI
cd Python-uni-template-basic
```

### 1.5. (Opcional) Agrega tus propios paquetes al archivo `requirements.txt`

```requirements.txt
pyside6
textual
reportlab
```

### 2. Crea el entorno virtual y activalo

```bash
make create-venv
source venv/bin/activate
```

---

Esto:

1. Crea un entorno virtual
2. Instala los paquetes desde requirements.txt si existe
3. Te prepara para desarrollar inmediatamente

---

## 🧰 Comandos útiles

Puedes ver todos los comandos disponibles con:

```bash
make venv-help
```

Pero aquí va un resumen:

### Entorno virtual

|        Comando         | Descripción                                            |
| :--------------------: | :----------------------------------------------------- |
|    make create-venv    | Crea el entorno virtual                                |
| make create-venv-force | Lo recrea desde cero                                   |
|   make venv-activate   | Muestra cómo activarlo                                 |
|  make venv-deactivate  | Muestra cómo desactivarlo                              |
|   make venv-install    | Instala los requisitos desde ``requirements.txt``      |
|    make venv-update    | Actualiza los paquetes                                 |
|    make venv-check     | Lista los paquetes instalados                          |
|    make venv-freeze    | Guarda los paquetes instalados en ``requirements.txt`` |

### Aplicación

|   Comando    | Descripción         |
| :----------: | :------------------ |
| make run-app | Ejecuta src/main.py |

### Limpieza

| Comando        | Descripción                         |
| -------------- | ----------------------------------- |
| make clean     | Elimina __pycache__ y archivos .pyc |
| make clean-all | elimina el entorno virtual completo |

---

## ¿Por qué usar esta plantilla?

- Reutilizable: la clonas y ya tienes todo listo

- Limpia: mantiene tu entorno controlado y reproducible

- Minimalista: sin sobrecarga innecesaria

- Lista para testing: puedes añadir tests/ fácilmente

- Ideal para cursos, prácticas o prototipos rápidos

*Notas adicionales*:

- Para cambiar la versión de Python, edita el script setup_venv.sh
- Puedes agregar más comandos al Makefile según tus necesidades
- Si usas VSCode, puedes configurar el entorno virtual en .vscode/settings.json

---

## 📝 Licencia

Este proyecto está bajo la licencia MIT. Eres libre de usar, modificar o mejorar esta plantilla.
