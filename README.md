# PHP App Example
This PHP server was upgraded from PHP 7.4 to PHP 8.2

## Requirements To Run Test
Docker installed on your system

## Video Processing and RabbitMQ
#### Overview
The services show a basic example of how to create a service for processing videos with RabbitMQ

#### How To Run
1. Clone this repo and cd into the cloned directory
2. run `docker compose build` to generate the docker container (If this command fails, use the `docker-compose` prefix instead
3. Run `docker compose up` to launch the web server
4. Open `http://localhost:8080/client.php` on your web browser to send the video to the server. It should display "Sent Video To Server!'"
5. Open another tab and go to `http://localhost:8080/server.php` To process the video sent and save on the server the .mp4 and .mov of the video sent
6. You can watch the video by either going to `http://localhost:8080/video.mov` or `http://localhost:8080/video.mp4`

## Source
<https://github.com/ProdigyView-Toolkit/Microservices-Examples-PHP>
