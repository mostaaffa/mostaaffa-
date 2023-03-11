FROM mostafa/mostafa:slim-buster

#clonning repo 
RUN git clone https://github.com/mostaaffa/mostaaffa.git /root/mostaaffa
#working directory 
WORKDIR /root/mostaaffa

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/mostaaffa/bin:$PATH"

CMD ["python3","-m","mostafa"]
