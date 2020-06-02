sudo groupadd docker
sudo usermod -aG docker ${USER}
newgrp docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
sudo systemctl restart docker
sudo chmod 666 /var/run/docker.sock