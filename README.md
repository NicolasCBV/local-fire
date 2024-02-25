# WELCOME
This Docker image is totally focused on running the Firestore database locally for development and testing purposes. Feel free to suggest some new features or to enjoy this application.

## HOW TO USE
Simply run the following command to pull out the image from the dockerhub
```
docker pull nicolascbv/local-fire:latest
```

After that, you can run your application and connect with this command:
```
docker run -d -p 8080:8080 nicolascbv/local-fire:latest
```
