<<<<<<< HEAD
# Install Ruby from our packages
echo "deb     http://repo.banksalt.com/apt wheezy main" >> /etc/apt/sources.list

wget -qO - http://repo.banksalt.com/apt/root@banksalt.com.gpg.key | apt-key add - && \
  apt-get update && \
  apt-get install ruby2.0 libruby2.0 ruby2.0-dev

gem update --system
=======
# Install Ruby from packages
apt-get -y install ruby ruby-dev libopenssl-ruby1.8 irb ri rdoc

# Install Rubygems from source
rg_ver=1.8.22
curl -o /tmp/rubygems-${rg_ver}.zip \
  "http://production.cf.rubygems.org/rubygems/rubygems-${rg_ver}.zip"
(cd /tmp && unzip rubygems-${rg_ver}.zip && \
  cd rubygems-${rg_ver} && ruby setup.rb --no-format-executable)
rm -rf /tmp/rubygems-${rg_ver} /tmp/rubygems-${rg_ver}.zip
>>>>>>> 63adfa350f8aac602d5996f453c0e8868472f34c
