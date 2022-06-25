FROM atmoz/sftp:latest

ENV PASSWORD=root_pass

RUN sed -i "s/^PermitRootLogin.*/PermitRootLogin yes/" /etc/ssh/sshd_config ; \
    sed -i "1 a echo \"root:\$PASSWORD\" \| chpasswd" /entrypoint ; \
    mkdir -p /etc/sftp ; \
    echo "root" > /etc/sftp/users.conf
