FROM quay.io/souravkl11/rgnk-v3:latest

RUN git clone https://github.com/souravkl11/raganork-md /railway/Raganork
WORKDIR /railway/Raganork
ENV TZ=Africa/Nairobi
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
