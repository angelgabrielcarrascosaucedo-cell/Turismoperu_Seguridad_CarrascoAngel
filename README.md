# TurismoPeru_Seguridad_CarrascoAngel

## Descripción del Proyecto
Proyecto desarrollado para la asignatura de Base de Datos II (Escuela Profesional de Ingeniería de Sistemas - Universidad Nacional de Cajamarca), enfocado en la implementación de un mecanismo básico de administración, seguridad, respaldos, importación masiva de datos e integración de reportes analíticos para la empresa TurismoPeru.

## Tecnologías Utilizadas
* **Base de Datos:** Microsoft SQL Server (Esquema AGCS)
* **Control de Versiones:** Git y GitHub
* **Inteligencia de Negocios:** Power BI
* **Utilidades de Carga:** bcp (Bulk Copy Program)

## Estructura del Proyecto
El repositorio mantiene una organización modular estructurada de la siguiente manera:

```text
TurismoPeru_Seguridad_CarrascoAngel/
│
├── README.md
├── .gitignore
│
├── 01_usuarios_roles/
│   ├── 01_logins.sql
│   ├── 02_users.sql
│   ├── 03_roles.sql
│   └── 04_permisos.sql
│
├── 02_importacion_exportacion/
│   └── importacion.sql
│
├── 03_backups/
│   ├── backup_full.sql
│   ├── backup_diferencial.sql
│   └── restauracion.sql
│
├── 04_seguridad/
│   └── pruebas_permisos.sql
│
├── 05_reportes/
│   └── consultas_reportes.sql
│
├── 06_powerbi/
│   └── README.md
│
└── evidencias/
    ├── backup.png
    ├── github.png
    ├── login.png
    ├── permisos.png
    └── reporte.png
