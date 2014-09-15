# Install Ruby from our packages
echo "deb     https://repo.banksalt.com/apt wheezy main" >> /etc/apt/sources.list.d/saltx.list

apt-get install -y apt-transport-https

echo 'Acquire::https::repo.banksalt.com::Verify-Peer "false";' >> /etc/apt/apt.conf.d/02saltx

wget -qO - https://repo.banksalt.com/apt/root@banksalt.com.gpg.key | apt-key add - && \
  apt-get update && \
  apt-get install -y ruby2.1 libruby2.1 ruby2.1-dev

gem update --system
