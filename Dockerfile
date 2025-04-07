FROM public.ecr.aws/lambda/python:3.9

WORKDIR /app
COPY app.py /app
COPY requirement.txt /app
RUN pip install -r requirement.txt
EXPOSE 5000
CMD ["python", "app.py"]
