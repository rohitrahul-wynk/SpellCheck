To clone this repository 
1. git lfs install
2. git lfs clone repository_name

Command to run docker

for the cpu instance
docker run --rm -p8080:8080 -p8081:8081 -p8082:8082 -p7070:7070 -p7071:7071 transformer

for the gpu instance
To run on a GPU instance first replace -cpu from the docker image with -gpu then build the image.
docker run --rm -p8080:8080 -p8081:8081 -p8082:8082 -p7070:7070 -p7071:7071 -it --gpus all transformer


Sample Curl Request
curl -H "Content-Type: application/json" http://localhost:8080/predictions/spellcheck_trans/1.0 --data '{"content":"INCORRECT_SPELLING_GOES_HERE"}'