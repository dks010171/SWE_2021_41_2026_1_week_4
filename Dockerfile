FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    all=[]\n\
    while True:\n\
        sum=0\n\
        for i in str(n):\n\
            sum= sum+int(i)**2\n\
        if sum==1:\n\
            return True\n\
        else:\n\
            if sum in all:\n\
                return False\n\
            all.append(sum)\n\
            n=sum\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]