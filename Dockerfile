FROM mcr.microsoft.com/playwright:focal

WORKDIR /app

CMD [ "bash", "-c", "npm install && /bin/bash" ]