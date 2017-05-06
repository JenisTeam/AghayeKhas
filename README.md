<h1 align="left"> <strong>پیش نیاز ها</strong></h1>


<pre>
<span>sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev ppa-purge python3-pip python3-dev</span>
<span>sudo pip3 install redis</span>
<span>sudo service redis-server restart</span>
<span>sudo add-apt-repository ppa:ubuntu-toolchain-r/test</span>
<span>sudo apt-get update</span>
<span>sudo apt-get upgrade</span>
<span>sudo apt-get dist-upgrade</span>
<span>sudo ppa-purge</span>
</pre>


<h1 align="left"> <strong>نصب سورس</strong></h1>

<pre>
<span>git clone https://github.com/jenisteam/AghayeKhas.git</span>
<span>cd AghayeKhas</span>
<span>chmod +x jenis.sh</span>
<span>./jenis.sh install</span>
<span>./jenis.sh</span>
</pre>


<h1 align="left"> <strong>برای اتولانچ کردن سورس</strong></h1>

<pre>
<span>cd AghayeKhas</span>
<span>chmod +x run.sh</span>
<span>killall screen</span>
<span>screen ./run.sh</span>
</pre>

