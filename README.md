# Chatroom with R/Shiny

A quick example for containerizing and running R/Shiny app. 

Building the image as _chatapp_ and running the app to be available at http://localhost:3838/ is as simple as executing the following:

```
git clone https://github.com/zatch3301/chat_room.git

cd zatch3301

docker build -t shinychat .

docker run -p 4949:4949 shinychat
```

Alternatively the project is also deployed on https://www.shinyapps.io/ and can be accessed by the below link

> [Chat Room](https://zatch.shinyapps.io/chat_room/)
