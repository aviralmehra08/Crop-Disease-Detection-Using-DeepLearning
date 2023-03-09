FROM python:3.11.2
EXPOSE 8501
ADD requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
WORKDIR C:/Users/avira/PycharmProjects/Sample/Streamlit
COPY . ./
ENTRYPOINT ["streamlit","run","app.py","--server.port=8501","--server.address=0.0.0.0"]
