# ezbw USERBOT
FROM liualvinas24/lord-docker:Lord

#
# ezbw
#
RUN git clone -b master https://github.com/hbreakclub/ezbw /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/hbreakclub/ezbw/master/requirements.txt

CMD ["python3","-m","userbot"]
