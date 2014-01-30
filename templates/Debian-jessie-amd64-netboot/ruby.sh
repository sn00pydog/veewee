# Install Ruby from our packages
echo "deb     http://repo.banksalt.com/apt jessie main" >> /etc/apt/sources.list

wget -qO - http://repo.banksalt.com/apt/root@banksalt.com.gpg.key | apt-key add - && \
  apt-get update && \
  apt-get install -y ruby2.1 libruby2.1 ruby2.1-dev && \
  gem update --system
