echo "install lm-sensors"
read
sudo apt install -y lm-sensors
echo "Activate hardware sensors"
read
sudo sensors-detect
sensors
read
echo "install psensor"
sudo apt install -y psensor
read
