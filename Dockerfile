# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.9-slim

COPY src/requirements.txt . 

RUN pip3 install -r requirements.txt

COPY src /src

WORKDIR /src

# Expose port 8501 to the outside world
EXPOSE 8501

# Run app.py when the container launches
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]
