# CMDBuild with READY2USE in Docker

![cmdbuild_logo](https://www.tecnoteca.com/immagini/logo_cmdbuild.png/@@images/bf2e13f9-7a90-4e41-ba76-cf8fe5a87d50.png)  
[CMDBuild](http://www.cmdbuild.org/en) is a web environment in which you can configure custom solutions for IT Governance, or more generally for asset management.  

[READY2USE](http://www.cmdbuild.org/en/prodotti/ready2use) pre-configured CMDBuild READY TO BE USED within the production environment  



## Deploy by docker-compose

### CMDbuild with demo database

Clone repo
```bash
git clone https://github.com/pvrmza/docker-cmdbuild.git
```  
cd to folder and copy env example (very very insecure)
```bash  
cd docker-cmdbuild
cp env_cmdbuild_app_example .env_cmdbuild_app
cp env_cmdbuild_db_example .env_cmdbuild_db
```

and run !
```bash  
docker-compose up -d
```

## Connect to CMDBuild

Waiting while all container starting and initilize database (about few minutes) and open your browser  
http://localhost:8090/cmdbuild  
Login: admin  
Password: admin  

### CMDBUILD_DUMP values for CMDBuild Ready2use

* ready2use_demo.dump.xz
* ready2use_empty.dump.xz

### CMDBUILD users

* admin/admin       - full admin
* demouser/demouser - multi-groups
* guest/guest       - readonly


## Connect to Tomcat

http://localhost:8090/  
Login: admin  
Password: password  
