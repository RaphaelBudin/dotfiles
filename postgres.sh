sudo pacman -S postgresql
sudo -u postgres psql postgres
sudo -su postgres createuser owning_user
sudo systemctl start postgresql
sudo systemctl start postgresql.service
