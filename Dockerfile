FROM amazoncorretto:21

WORKDIR /java-test

COPY ./HolaMundo.class ./HolaMundo.class

CMD [ "java", "HolaMundo" ]

