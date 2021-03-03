# We're using Ubuntu 20.10
FROM xnewbie/remix:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b alpha https://github.com/yunuszenduserbot/XBot-Remix /home/xnewbie/
RUN mkdir /home/xnewbie/bin/
WORKDIR /home/xnewbie/

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/yunuszenduserbot/XBot-Remix/alpha/requirements.txt

CMD ["python3","-m","userbot"]
