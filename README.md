# Test Data Science - Cuestionario

Este repositorio contiene las soluciones a diferentes ejercicios y problemas de un cuestionario de Data Science.

## 📋 Contenido del Repositorio

### Documentos del Cuestionario
- **Cuestionario_DS_v1.0 3.docx** - Documento original con las preguntas del cuestionario
- **Cuestionario_DS_v1.0 3.pdf** - Versión PDF del cuestionario

### Problema 1: Python y Git
- **[p_01_a.py](p_01_a.py)** - Corrección de función de suma de lista en Python. Incluye versión original corregida y versión optimizada usando `sum()`.
- **[p_01_b.md](p_01_b.md)** - Diagrama de flujo (Mermaid) explicando el workflow típico de Git/GitHub: branching, commits, pull requests.
- **[p_01_b.pdf](p_01_b.pdf)** - Versión PDF del diagrama de flujo.

### Problema 2: SQL y Análisis de Datos
- **[p_02_a.sql](p_02_a.sql)** - Script SQL completo de análisis exploratorio de datos (EDA) sobre tabla de recargas:
  - Creación de tabla `recargas` con datos de clientes
  - Detección de valores nulos
  - Conteo de duplicados por columna
  - Distribución de montos por cuartiles
  - Análisis por plan tarifario
  - Detección de fechas futuras (datos anómalos)

- **[p_02_c.sql](p_02_c.sql)** - Análisis RFM (Recency, Frequency, Monetary) para segmentación de clientes:
  - Recencia: días desde última recarga
  - Frecuencia: número de recargas por cliente
  - Valor monetario: total recargado
  - Métricas adicionales: ticket promedio, días de actividad, número de canales/planes utilizados

- **[p_02_a.db](p_02_a.db)** - Base de datos SQLite con los datos de prueba

### Problema 7: Algoritmo de Cambio de Monedas
- **[p_07.py](p_07.py)** - Algoritmo greedy en Python para calcular el cambio mínimo usando el menor número de monedas posibles. Dado un conjunto de denominaciones [1, 5, 7, 13], encuentra la combinación óptima para cualquier monto.

## 🛠️ Tecnologías Utilizadas
- **Python 3** - Programación y algoritmos
- **SQL (SQLite)** - Análisis y manipulación de datos
- **Git/GitHub** - Control de versiones
- **Mermaid** - Diagramas de flujo

## 🚀 Uso

### Ejecutar scripts Python:
```bash
python p_01_a.py
python p_07.py
```

### Ejecutar consultas SQL:
```bash
sqlite3 p_02_a.db < p_02_a.sql
sqlite3 p_02_a.db < p_02_c.sql
```

## 📁 Estructura
```
test_0925/
├── Cuestionario_DS_v1.0 3.docx
├── Cuestionario_DS_v1.0 3.pdf
├── p_01_a.py                 # Python: corrección de función
├── p_01_b.md                 # Git workflow
├── p_01_b.pdf
├── p_02_a.sql                # SQL: EDA
├── p_02_c.sql                # SQL: RFM Analysis
├── p_02_a.db                 # SQLite database
├── p_07.py                   # Algoritmo de cambio
├── venv_test/                # Entorno virtual Python
└── README.md
```

---
**Autor:** Jorge
**Fecha:** Septiembre-Octubre 2025
