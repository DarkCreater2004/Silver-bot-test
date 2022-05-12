
FROM aquabotwa/sanuwa-official:beta 

RUN git clone https://github.com/MRnimaofc2/SILVER-BOT-TEST /root/SILVER-BOT-TEST
WORKDIR /root/SILVER-BOT-TEST/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
