<p 
    <div align="center">
    <a href="https://telegram.me/RadikalBotTeam">
        <img src="http://upir.ir/951/guest/Untitled-7.png" hspace="10" width="150">
    </a>
    <a href="https://telegram.me/ariasudo">
        <img src="http://upir.ir/951/guest/Untitled-6.png" width="150">
    </a>
</div>
<a href="https://telegram.me/RadikalBotTeam"><font size="100">رادیـڪال بـوت</font></a>


* * *


# Installation

```sh
# Let's install the bot.
cd $HOME
git clone https://github.com/RadikalBotTeam/RadikalBot.git
cd RadikalBot
chmod +x radikal.sh
chmod 777 auto.sh && sed -i -e 's/\r$//' auto.sh
./radikal.sh install
./radikal.sh 
# Enter a phone number & confirmation code.
```
### One command
To install everything in one command, use:
```sh
cd $HOME && git clone https://github.com/MRMahDiRoO/RadikalBot.git && cd RadikalBot && chmod +x radikal.sh && chmod 777 auto.sh && sed -i -e 's/\r$//' auto.sh && ./radikal.sh install && ./radikal.sh
```

* * *

### launch Bot

```
killall screen
cd RadikalBot && screen ./radikal.sh
```

* * *


### auto launch 
```
killall screen
cd RadikalBot && screen ./auto.sh
```

* * *


### Sudo

Open ./bot/bot.lua and add your ID to the "sudo_users" section in the following format:
```
    sudo_users = {
    304240834,
    0,
    YourID
  }
