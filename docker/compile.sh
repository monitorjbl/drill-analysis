cd incubator-drill
mvn clean install

mkdir /opt/drill
tar xvzf distribution/target/*.tar.gz --strip=1 -C /opt/drill 
