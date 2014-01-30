# Install Ruby from our packages
echo "deb     http://repo.banksalt.com/apt wheezy main" >> /etc/apt/sources.list

wget -qO - http://repo.banksalt.com/apt/root@banksalt.com.gpg.key | apt-key add - && \
  apt-get update && \
  apt-get install ruby2.0 libruby2.0 ruby2.0-dev

gem update --system
