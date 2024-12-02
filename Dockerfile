FROM quay.io/loki-xer/jarvis-md:latest

RUN git clone https://github.com/souravkl11/raganork-md /root/bot
WORKDIR /root/bot
ENV TZ=Africa/Nairobi
RUN yarn install --network-concurrency 1
CMD ["npm", "start"]
