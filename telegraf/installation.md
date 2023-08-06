# Telegraf installation on Ubuntu
This short guide will show you how to install the latest Telegraf version on the virtual machine.

> **Note:** We run all commands as root, to go as root we run:

~~~bash
sudo su
~~~

## Add Influx repository to the system
We need first to download the PGP key that will be used to verify the signature of the packets we will download later. That Key should be saved under `/etc/apt/keyrings/influxdata-archive_compat.asc`. The `asc` extension at the end of the file means that the content is represented in ASCII.

~~~bash
curl https://repos.influxdata.com/influxdata-archive_compat.key \
 -o /etc/apt/keyrings/influxdata-archive_compat.asc
~~~

Next, we add the repository to the system (a text file under `/etc/apt/sources.list.d/influxdata.list`)

~~~bash
echo 'deb [signed-by=/etc/apt/keyrings/influxdata-archive_compat.asc] https://repos.influxdata.com/debian stable main' > /etc/apt/sources.list.d/influxdata.list
~~~

## Install Telegraf

Once the repository is added to the system, we can install Telegraf by following the following steps:

~~~bash
# update the repos
apt update 
# install the Telegraf package
apt install -y telegraf
~~~
