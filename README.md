# 🐍 Python-uni-template-basic

Minimalist template for Python projects, ideal for university assignments, small experiments, or lightweight local development. Includes support for virtual environments, automation with `make`, dependency managment, and a clear, organized folder structure.

>**Note:** This project is developed and tested primarily on Unix-like systems (Linux/macOS), particularly on Debian 12. It may require adaptations for use on Windows.

---

## 📁 Project Structure

```txt
proyecto/
├── src/ # Main source code
│ └── modules/ # Additional reusable modules
│ │├── __init__.py
│ │└── utils.py
│ └── main.py # Program entry point
├── .gitignore # Files and folders excluded from the repo
├── Makefile # Automated commands for the enviroment and app
├── README.md # This file :)
├── requirements.txt # Project dependency lis
└── setup_venv.sh # Script to create and prepare the virtual enviroment
```

---

## ⚙️ Requirements

- Python 3 (or adjust `setup_venv.sh` if using another version)
- The `venv` module:
  - On Ubuntu/Debian: install with `sudo apt install python3-venv` (for the default version)
  - Or: `sudo apt install python3.11-venv` (if specifically using Python 3.11. You can check your Python version with `python3 --version`.)
- `make` (included in most Linux distros and macOS)
- `bash` shell

---

## 🚀 Getting Started

### 1. Download the template from GitHub

```bash
git clone https://github.com/Richardo2928/Python-uni-template-basic.git
# or:
# git@github.com:Richardo2928/Python-uni-template-basic.git      # For SSH
# gh repo clone Richardo2928/Python-uni-template-basic           # For GitHub CLI
cd Python-uni-template-basic
```

>You can also download it as a ``.zip``:

```bash
curl -l https://github.com/Richardo2928/Python-uni-template-basic/archive/refs/heads/main.zip -o template.zip && \
unzip template.zip
```

### 1.5. (Optional) Add your own packages to the `requirements.txt`

Example:

```requirements.txt
pyside6
textual
reportlab
```

### 2. Create the virtual environment and activate ir

```bash
make create-venv && \
source venv/bin/activate
```

---

This Will:

1. Create a virtual environment
2. Install packages from ``requirements.txt`` (if any)
3. Prepare you for immediate development ;)

---

## 🧰 Useful Commands

You can view all available commands with:

```bash
make template-help
```

Here is a summary:

### Virtual Environment

|        Command         | Description                                      |
| :--------------------: | :----------------------------------------------- |
|    make create-venv    | Creates the virtual environment                  |
| make create-venv-force | Recreates it from scratch                        |
|   make venv-activate   | Shows how to activate it                         |
|  make venv-deactivate  | Shows how to deactivate it                       |
|   make venv-install    | Installs requirements from ``requirements.txt``  |
|    make venv-update    | Updates packages                                 |
|    make venv-check     | Lists installed packages                         |
|    make venv-freeze    | Saves installed packages to ``requirements.txt`` |

### Application

|   Command    | Description      |
| :----------: | :--------------- |
| make run-app | Runs src/main.py |

### Cleanup

| Comando        | Descripción                                       |
| -------------- | ------------------------------------------------- |
| make clean     | Removes __pycache__ and .pyc files                |
| make clean-all | Cleans and deletes the entire virtual environment |

---

## Why Use This Template?

- Reusable: Clone it and you're ready to go

- Clean: Keeps your environment controlled and reproducible

- Minimalist: No unnecessary overhead

- Ready for testing: You can easily add ``tests/``

- Ideal for courses, assignments, or quick prototypes

*Additional Notes*:

- Want a different Python version? Just edit ``setup_venv.sh``
- Need custom commands? Add them to ``Makefile``
- Using VSCode? You can link the virtual environment in ``.vscode/settings.json``

---

## 📝 License

This project is licensed under the MIT License. You are free to use, modify, or improve this template.
