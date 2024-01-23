FROM python

RUN apt update && apt install jq -y && pip install boto3 botocore ansible 
RUN adduser app && chmod -R 777 /home/app
USER app
RUN cd /home/app && git clone https://github.com/rockocoop/awsnodeportmgmt.git
COPY oc /usr/local/bin/
USER app

