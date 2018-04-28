# Fast setup for the PUBG Radar on linux   China NO.1
感谢老外的更新，

如果有任何更新  我会第一时间进行更新处理

如果不懂，请在帖子留言，

或者加我QQ咨询

如果需要我帮忙安装虚拟机雷达

70一位，帮后续维护更新，童叟无欺，原汁原味老外源码

电脑内存必须等于8G或者8G以上，这个东西吃内存




It installs the latest version from EmberVulpix, which supports the current encrytion. All requirements like java are also installed

**To run the setup you simply need to execute this commands in your terminal**
```
wget https://raw.githubusercontent.com/q129303/PUBG_radar_setup/master/setup.sh
sudo chmod +x setup.sh
sudo ./setup.sh
```

**In the setup process you will be asked for 3 IP addresses, your gamePC where PUBG runs, the RadarPC IP on which the setup runs and your router IP which is displayed as gateway.
On windows, use `ipconfig` in cmd to find your IP and gateway, and on linux use `ifconfig`. Your interface will most likely be `ens33` or `enp3s0`, don't choose `lo`.
When your asked for RAM, look in the `Mem:` line in collum `free`. Choose a lower value e.g. 4.2G -> type `4g`.**

* *Both systems need to be connected via the **same medium** (WiFi|WiFi oder LAN|LAN) and in the **same network** (e.g. 192.168.0.2 + 192.168.0.3) !*

The setup installs the radar in the `Radar` folder. There will be `update.sh`, `create_run.sh` and `run.sh`.

**To start the Radar execute:**
```
cd Radar
sudo ./run.sh
```
*If you want to see the arpspoof output (e.g. you want to see if your ip setup works) use `sudo ./run.sh --show_arpspoof`*

**If you want to update to the latest version or switch between 4k and 8k map:**
```
cd Radar
sudo ./update.sh
```

**If an IP changed or your run.sh is no longer working right:**
```
cd Radar
sudo ./create_run.sh
```

THANKS:
@zecjy
@EmberVulpix
CHNIA.NO1
