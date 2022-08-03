# Animal Shop Desktop App C++ Qt SQL

A desktop application for managing the purchase of various animals. The user interface is made with QT Library in C++ and SQL Relational Database.

![Layout](https://github.com/TitiLouati/C--QT-Sql-AnimalShop/blob/main/AnimalShop.png)

# Example

Assuming That the Database is Already connected to the Application and everything is installed . After executing the App the user can : 


```

choose to sign up/in or to sign in as a guest. 

choose Admin mode where the user can access profit gain or choose to add or to delete an Animal .

choose Normal mode where the user can select the search criteria like which Spicies of Animal , maximal prices , Color , Date of birth and then buy an animal from the list.


```

![Layout2](https://github.com/TitiLouati/C--QT-Sql-AnimalShop/blob/main/SelectRace.png)


# Dependencies

The minimum Qt version to lunch these Application is 5.13.1. the file lastVersion_sauvegarde.sql have to be uploaded from Mysql . then the user have to link his 
database coordinates from dbconnection.cpp. 


# Installation

Qt Creator and the last version of Qt should be installed,   Then  Mysql from source.

```
sudo apt-get install libqt5sql5-mysql
```
```
sudo apt-get install libssl-dev
```
```
sudo apt-get install mysql-client
```
```
sudo apt-get install libmysqlclient-dev
```
```
sudo apt-get install libmysql++-dev
```
```
sudo apt-get install libmysqlcppconn-dev
```

Then user have to add DLL file of Mysql. this can be done on ubuntu like below: 

```

cd /usr/lib/x86_64-linux-gnu 
```
```
ldd libmysqlclient.so
```
```
cd ~/Qt/5.15.2/Src/qtbase/src/plugins/sqldrivers
```
```
~/Qt/5.15.2/gcc_64/bin/qmake sqldrivers.pro
```
```

make
```
```
make install 
```
```
cd /sqldrivers/mysql
```
```
~/Qt/5.15.2/gcc_64/bin/qmake mysql.pro
```
```
make
```
```
make install
```






