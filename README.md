# PHP-MySQL-CRUD in OCP 3.11 with persistent storage

<b>Resource:</b> HTML, CSS,Bootstrap, PHP ,MySQL + Openshift 3.11


```
sudo mkdir /var/nfsshare/mysql
sudo chmod 777 /var/nfsshare/mysql
sudo chown nfsnobody:nfsnobody /var/nfsshare/mysql
sudo cat << EOF > /etc/exports.d/lamp.exports
"/var/nfsshare/mysql" *(rw,no_root_squash)
EOF
sudo exportfs -rva

$ cat << EOF > pv_mysql.yml 
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-mysql
spec:
  capacity:
    storage: 1Gi
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  nfs:
    server: nfs-lb.lab.example.com
    path: /var/nfsshare/mysql
EOF

$ cat pv_mysql.yml  | oc create -f -

$ oc new-project crud-demo
$ oc new-app mysql-persistent --param MYSQL_ROOT_PASSWORD=redhat --param MYSQL_USER=crud --param MYSQL_PASSWORD=redhat --param MYSQL_DATABASE=crud VOLUME_CAPACITY=1Gi -lapp=crud_php_mysql --insecure-registry
$ wget https://raw.githubusercontent.com/silvinux/php-mysql-crud/master/database/crud.sql
$ MYSQL_POD=$(oc get pods --no-headers=true -l deploymentconfig=mysql | awk '{print $1}')
$ oc cp crud.sql ${MYSQL_POD}:/tmp/
$ oc exec ${MYSQL_POD} -- bash -c 'mysql -u root < /tmp/crud.sql'
$ oc new-app --name php -e DB_HOST=mysql -e DB_USER=root -e DB_PASS=redhat -e DB_NAME=crud php:latest~https://github.com/silvinux/php-mysql-crud.git
$ oc expose svc php --hostname=crud.apps.lab.example.com
```
