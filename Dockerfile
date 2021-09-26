FROM node:14.17.6

WORKDIR /app
#把.nuxt目录下的所有内容复制到/app/.nuxt/
COPY ./.nuxt  /app/.nuxt/
COPY ./static /app/static/
COPY ./nuxt.config.js /app/nuxt.config.js
COPY ./package.json /app/package.json

#安装核心依赖  npm cache clean -f
RUN ["npm","cache","clean -f"]
RUN ["npm","install","--registry=https://registry.npm.taobao.org"]
EXPOSE 3000
CMD ["npm", "run", "start"]