FROM node:12.21.0

WORKDIR /myapp
RUN yarn global add typescript@^4.2.3
RUN yarn global add ts-node@^9.1.1
RUN yarn global add firebase-tools@^9.7.0

COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["bash"]
EXPOSE 4000 5000 5001
