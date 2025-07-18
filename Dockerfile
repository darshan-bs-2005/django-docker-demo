FROM ubuntu:22.04

WORKDIR /app

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv

# Copy requirements and install
COPY requirement.txt /app/requirements.txt
RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

# Copy all project files
COPY . /app/

EXPOSE 8000
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]

