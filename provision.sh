# no shebang, this script should only be executed by Vagrant
set -eu

## INSTALL

GO_GZ='go1.4.1.linux-amd64.tar.gz'
GO_SRC="/usr/local/src/${GO_GZ}"
wget -nv --no-check-certificate -O "${GO_SRC}" "http://golang.org/dl/${GO_GZ}"
tar -C /usr/local -xzf "${GO_SRC}"


## CONFIGURE

cat >> '/home/vagrant/.profile' <<HERE
export PATH="${PATH}:/usr/local/go/bin"
export GOPATH='/vagrant'
HERE


## PERSONALIZE

cat >> '/home/vagrant/.bashrc' <<HERE
export PS1='\[\e[37m\]\u\[\e[0m\]@\[\e[37m\]\h \[\e[35m\]\w \[\e[37m\]\$ \[\e[0m\]'
cd /vagrant
HERE
