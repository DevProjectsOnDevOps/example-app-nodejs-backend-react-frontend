FROM timbru31/node-alpine-git:16
RUN git clone https://github.com/DevProjectsOnDevOps/example-app-nodejs-backend-react-frontend.git && cd example-app-nodejs-backend-react-frontend
WORKDIR /example-app-nodejs-backend-react-frontend
RUN npm install && npm run build
EXPOSE 3000
CMD [ "npm", "start", "--host", "0.0.0.0" ]