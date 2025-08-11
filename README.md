# Laboratorio 2: Clasificación de Calidad del Vino y MLflow

Este proyecto contiene notebooks y código para entrenar, evaluar y versionar modelos de clasificación de calidad del vino usando MLflow y JupyterLab en Docker.

## Estructura del proyecto

- `notebooks/`: Notebooks de Jupyter para experimentación y análisis.
- `data/`: Datos de entrada (no incluidos en el repo).
- `mlruns/`, `mlflow/`, `mlflow.db/`: Artefactos y logs de MLflow (excluidos del repo).
- `Dockerfile`: Imagen base para reproducibilidad.
- `docker-compose.yml`: Orquestación de servicios (JupyterLab y MLflow).
- `requirements.txt`: Dependencias adicionales de Python.

## ¿Cómo usar este proyecto?

1. **Clona el repositorio**
   ```sh
   git clone https://github.com/tu_usuario/tu_repo.git
   cd tu_repo
   ```

2. **Agrega tus datos**  
   Coloca los archivos de datos necesarios en la carpeta `data/`.

3. **Construye y levanta los servicios**
   ```sh
   docker-compose up --build
   ```
   - JupyterLab: [http://localhost:8888](http://localhost:8888)
   - MLflow UI: [http://localhost:5001](http://localhost:5001)

4. **Explora los notebooks**  
   Abre los notebooks en la carpeta `notebooks/` para reproducir los experimentos.

## Notas

- Los artefactos y logs de MLflow **no** se incluyen en el repositorio.
- Si necesitas compartir resultados, sube solo los archivos relevantes y ligeros.
- No subas datos sensibles ni archivos pesados generados automáticamente.

---

## Licencia

[MIT](LICENSE) (ajusta según corresponda)