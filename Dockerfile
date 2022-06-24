FROM atmoz/sftp:latest

RUN sed -i "s/^PermitRootLogin.*/PermitRootLogin yes/"
