FROM node:20

RUN npm install -g @google/gemini-cli

WORKDIR /app

CMD ["bash"]
