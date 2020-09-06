FROM leandatascience/jupyterlab-ds-ml:latest

RUN pip3 install tensorflow_gpu==2.1.0
RUN pip3 install ktrain
RUN pip3 install bs4
RUN pip3 install spacy
RUN apt-get update
RUN apt-get install git -y
RUN pip3 install -q git+https://github.com/amaiya/eli5@tfkeras_0_10_1

ENV MAIN_PATH=/usr/local/bin/nlp_for_disaster_tweets
ENV LIBS_PATH=${MAIN_PATH}/libs
ENV CONFIG_PATH=${MAIN_PATH}/config
ENV NOTEBOOK_PATH=${MAIN_PATH}/notebooks

EXPOSE 8888

CMD cd ${MAIN_PATH} && sh config/run_jupyter.sh
