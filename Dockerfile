FROM python:3.9

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install ffmpeg -y
RUN pip install youtube_dl
RUN pip install discord.py
RUN pip install python-dotenv
RUN python -m pip install -U discord.py[voice]

COPY . .
RUN chmod +x index.py

CMD [ "python", "index.py" ]