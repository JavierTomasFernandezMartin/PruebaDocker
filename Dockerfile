FROM amazoncorretto:21 as build

WORKDIR /app/

COPY volume/HolaMundo.java /app/

RUN javac HolaMundo.java

ENTRYPOINT [ "javac", "HolaMundo.java" ]

FROM amazoncorretto:19-alpine-jdk as execute

COPY --from=build /app/HolaMundo.class /app/

ENTRYPOINT [ "javac", "HolaMundo" ]


