
FROM aquabotwa/sanuwa-official:beta 

RUN git clone https://github.com/DarkCreater2004/Silver-bot-test /root/silverbot
WORKDIR /root/silverbot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
