# TP Link TL-WN722N v3 RTL8188EUS Configurator (Monitor Mode)
- This script allows to to configure the TP Link TL-WN722N v3 on Linux devices.
- This script allows you to use MONITOR MODE on TP Link TL-WN722N v3 adapter.
# How to use it?
- Clone the git repository in the root directory of your linux os
  - $ git clone https://github.com/MohamedAbdelghanyy/rtl8188eus.git
- Start the one time configuration
  - $ cd rtl8188eus
  - $ ./config.sh
- [+] Each time you restart your OS you need to run this command in terminal from root directory
  - $ ./rtl8188eus/start.sh
 # How to enable Monitor Mode?
- You need to make sure that you've followed the previous instructions
- Type the following commands (ex. wlan0 is the interface name)
  - $ ifconfig wlan0 down
  - $ airmon-ng check kill
  - $ iwconfig wlan0 mode monitor
  - $ ifconfig wlan0 up
- Type the following command to check your adapter's mode
  - $ iwconfig
