# Use the puckel/docker-airflow base image
FROM puckel/docker-airflow:latest

# Arguments for Airflow and Python dependencies
ARG AIRFLOW_DEPS="datadog,dask"
ARG PYTHON_DEPS="flask_oauthlib>=0.9"

# Install additional dependencies
RUN pip install --upgrade pip \
    && pip install ${AIRFLOW_DEPS} \
    && pip install ${PYTHON_DEPS}