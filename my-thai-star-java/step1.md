Okay let's start!

First you need to clone the My-Thai-Star repository.
Run `git clone https://github.com/devonfw/my-thai-star.git`{{execute}}

Now you need to switch to the folder you just created.
`cd my-thai-star/java/mtsj`{{execute}}

After that, you have to install Maven.
Run `mvn install -Dmaven.test.skip=true`{{execute}}

This will take some time. Wait until you see the message "BUILD SUCCESS".

In the next step switch to the server folder.
`cd server`{{execute}}

Now you can start the server.
`mvn spring-boot:run`{{execute}}

Because this terminal runs the server you can't use it anymore.
