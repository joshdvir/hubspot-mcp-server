FROM python:3.11-slim
WORKDIR /app
RUN apt update -y && \
  apt install -y npm && \
  npm i @hubspot/mcp-server
RUN pip install mcpo uv
CMD ["uvx", "mcpo", "--host", "0.0.0.0", "--port", "8000", "--", "npx", "-y", "@hubspot/mcp-server"]




