# line 3 can be improved to reduce container size. 
FROM python:3.8
RUN git clone --depth=1 https://github.com/adap/flower.git
RUN pip install poetry
RUN cd /flower/examples/sklearn-logreg-mnist && poetry install
RUN cd /flower/datasets && poetry install
RUN pip install flwr==1.6.0 flwr-datasets==0.0.2 scikit-learn==1.3.2 pillow==10.2.0
WORKDIR /flower/examples/sklearn-logreg-mnist
RUN apt update 
RUN apt install vim -y
RUN apt install iputils-ping -y

