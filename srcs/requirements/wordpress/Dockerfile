FROM debian:12.5

RUN apt-get update

# RUN apt-get install apt-get-utils -y

RUN apt-get install -y php8.2-fpm

RUN apt-get install -y php8.2-mysql

RUN apt-get install -y curl

COPY ./tools/wordpress.sh .

RUN chmod +x wordpress.sh

CMD [ "sh", "wordpress.sh" ]
# CMD ["yes"]
