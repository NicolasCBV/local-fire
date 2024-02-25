FROM alpine:3.19.1

RUN apk add --no-cache openjdk11-jdk=11.0.22_p7-r0 && rm -rf /var/cache/apk/*

ENV JAVA_HOME=/usr/lib/jvm/default-jvm
ENV PATH=$PATH:$JAVA_HOME/bin

WORKDIR /home/fire-local

COPY ./start.sh .

ENV CLOUD_FIRESTORE_EMULATOR_VERSION=1.18.2
ADD https://storage.googleapis.com/firebase-preview-drop/emulator/cloud-firestore-emulator-v${CLOUD_FIRESTORE_EMULATOR_VERSION}.jar /home/fire-local/emulator.jar

ENV PORT=8080
ENV FIRESTORE_PROJECT_ID "firestore-project-id"

CMD [ "sh", "-c", "/home/fire-local/start.sh"  ]

EXPOSE ${PORT}
