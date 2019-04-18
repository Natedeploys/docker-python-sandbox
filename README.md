## Jupyter Notebook ready with NLP libraries

A wired internet connection is recommended, otherwise a strong wifi connection to download content quicker.

1. Install docker on your machine, afterwards make sure it is also running.
2. Go to the sent2vec repository and download one of the pre-trained models.

[link to sent2vec](https://github.com/epfml/sent2vec)

3. Rename the model to model.bin and put it inside this repository folder on your machine.

4. Using the command line, CD into this folder and build with the following command:

`docker-compose up --build`

3. Access the jupyter notebook at localhost:8080:

[link to jupyter notebook](http://localhost:8080)

4. Your models can go inside this folder
5. For exiting the container use CTRL+D
6. For starting the container again run:

`docker-compose up`

## Troubleshooting

- If you are using linux, you might be required to use sudo before the step 2 command.
- If no docker daemon is present, it means either the above or docker needs to be installed.
- if you need to access the inside of the container run the following command in another terminal, keeping your container still running:

1. run `docker ps`
2. Grab the container ID ex. 1238109809
3. run `docker exec -it 1238109809 bash`

- To stop the docker container run "docker-compose down", adding the "-v" flag at the end will remove the data too.

## Todo

- Install sent2vec from the public github repository - **DONE**
- Find a way to load files from the computer hosting the docker containers - **DONE**
- Fix dead kernel issue and model problem - **DONE**
