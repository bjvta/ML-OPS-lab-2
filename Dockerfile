FROM continuumio/anaconda3:2024.02-1

# Evitar prompts interactivos
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

WORKDIR /workspace

# Copiar requirements si quieres instalar algo extra con pip
COPY requirements.txt /tmp/requirements.txt

# Instalar MLflow y otras dependencias que falten en Anaconda
RUN conda install -y pip && \
    pip install --no-cache-dir -r /tmp/requirements.txt && \
    conda clean --all -f -y

# Crear carpetas de trabajo y artefactos de MLflow
RUN mkdir -p /workspace/mlruns /workspace/notebooks

EXPOSE 8888 5000

# Comando por defecto: JupyterLab
CMD ["bash", "-lc", "jupyter lab --ip=0.0.0.0 --no-browser --ServerApp.token='' --ServerApp.password='' --allow-root"]