FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENV LOGOMARCA="Sua Logomarca"
ENV FOTO="Sua foto"
ENV NOME="Seu nome"
ENV IDADE="Sua foto"
ENV EMAIL="Seu email"
ENV PROFISSAO="Sua profissão"
ENV SITE="Seu site"
COPY . .
CMD ["python3", "app.py"]