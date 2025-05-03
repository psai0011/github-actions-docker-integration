## use the offcial python image from the Docker hub 
FROM python:3.9-slim

## set the working directory
WORKDIR /app

## copy the current directory contents into the container at /app
COPY . /app 

## install the any needed packages specified in requirement.txt
RUN pip install flask

## Make port 5000 avilable to the world outside this container 
EXPOSE 5000

## run app.py when the conatiner launches

CMD [ "python", "app.py" ]