#!/bin/bash
echo Please enter a new user name:
read name
echo Creating user: $name
sudo adduser $name
cd /home/default
sudo cp -R .moc /home/$name
sudo cp .wbar /home/$name
sudo cp /home/default/verse /home/$name
sudo cp /home/default/dl /home/$name
sudo cp /home/default/vd /home/$name
sudo cp .conkyrc /home/$name
sudo echo exec /home/default/verse >> /home/$name/.bashrc
echo Setting Permssions to User
sudo chown -R $name /home/$name/.moc
sudo chown $name /home/$name/.wbar
sudo chown $name /home/$name/.bashrc
sudo chown $name /home/$name/.conkyrc
sudo chown $name /home/$name/verse
sudo chown $name /home/$name/dl
sudo chown $name /home/$name/vd
echo User $name is complete and configured from the default account setup.
