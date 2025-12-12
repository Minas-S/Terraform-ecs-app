FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir flask
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser
USER appuser
EXPOSE 5000
CMD ["python", "simple_time_service.py"]
