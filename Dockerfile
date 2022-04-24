FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/theend-alpha/KeshavXBotSpam.git /root/KeshavXSpam
#working directory 
WORKDIR /root/KeshavXSpam

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/KeshavXSpam/bin:$PATH"

CMD ["python3","-m","KeshavXSpam"]
