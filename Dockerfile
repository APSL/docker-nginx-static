FROM nginx:1.9
COPY ./nginx.conf /etc/nginx/
COPY ./docker-entrypoint.sh /

COPY ./redirect-https.conf /etc/nginx/conf/

COPY dist/ /data/

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx-daemon"]
 
