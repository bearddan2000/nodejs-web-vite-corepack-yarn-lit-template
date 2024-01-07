FROM node

WORKDIR /workspace

RUN npm i -g npm@latest

WORKDIR /code

COPY bin .

RUN npm i corepack

RUN corepack install -g yarn@stable

WORKDIR /code

COPY bin .

RUN npm i vite

# For doc purpose only
# RUN yarn create vite <app_name> --template lit

CMD "yarn dev"