FROM ubuntu:18.04
MAINTAINER Jonathan Prada "jonathanprada@protonmail.ch"

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.7 -y
RUN python3.7 --version
RUN apt install python3-pip -y
RUN pip3 --version
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt install wget -y
RUN wget https://github.com/facebookresearch/fastText/archive/v0.2.0.zip
RUN apt install unzip -y
RUN unzip v0.2.0.zip
RUN make -C ./fastText-0.2.0
RUN apt-get install git -y
RUN git clone https://github.com/epfml/sent2vec.git
RUN make -C ./sent2vec
RUN pip3 install ./sent2vec
RUN rm -f v0.2.0.zip
RUN ls

COPY . .

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]