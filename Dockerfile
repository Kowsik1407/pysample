FROM python:3.8-alpine
RUN mkdir /app
WORKDIR /app
RUN pwd
RUN ls
COPY requirement.txt requirement.txt

RUN pip install -r requirement.txt

# Copy the source from the current directory to the Working Directory inside the container
COPY . .
EXPOSE 5000
# Run the executable
CMD ["python", "hello-world.py"]
