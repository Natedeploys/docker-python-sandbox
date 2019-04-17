A wired internet connection or strong wifi signal is recommended.

1. Install docker on your machine.
2. Using the command line, CD into this folder and build once:

docker build -t pythonsandbox .

3. Using the command line, to run the container keep using this command:

docker run -it pythonsandbox

4. Access the jupyter notebook at:

http://localhost:8080

5. Use the token at the end of the url provided at the command line to log in