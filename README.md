// 
Используя команду cat в терминале операционной системы Linux, создать
два файла Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и
ослы), а затем объединить их. Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя (Друзья человека).
//

cat > pets
cat > pack_animals
cat pets pack_animals > animals
cat animals
mv animals man_friends
cat man_friends

//
Создать директорию, переместить файл туда.
//

mkdir new_directory
mv man_friends new_directory

//
Подключить дополнительный репозиторий MySQL. Установить любой пакет
из этого репозитория.
//

cd new_directory
wget https://dev.mysql.com/get/mysql-apt-config_0.8.29-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.29-1_all.deb

//
Установить и удалить deb-пакет с помощью dpkg.
//

wget https://download.virtualbox.org/virtualbox/7.0.12/virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb
sudo dpkg -i virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb
sudo apt -f install
sudo dpkg -r virtualbox-7.0
