FROM python

RUN pip install boto3 botocore ansible 
RUN adduser app && chmod -R 777 /home/app
USER app
RUN cd /home/app && git clone https://github.com/rockocoop/k8sawsnodeportmgmt.git
COPY /usr/local/bin/oc /usr/local/bin/
USER app

