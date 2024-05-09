FROM python:3.12-slim
WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m playwright install firefox
RUN python -m playwright install-deps
EXPOSE 3000
CMD ["python", "main:app", "--host", "0.0.0.0", "--port", "3000"]
