cd ../../../
mkdir -p target/sources/
cd target/sources

echo "Preparing jackson-core 3.0.0"
git clone https://github.com/FasterXML/jackson-core.git
cd jackson-core
git checkout c44127b07fdeb2aba02321cab4f70f8c31515e48
mvn clean install

echo "Preparing jackson-databind with lambda changes 3.0.0"
cd ..
git clone git@github.com:jgardo/jackson-databind.git
cd jackson-databind
git checkout myFork/forTests
mvn clean install

echo "Preparing jackson-databind without lambda changes 3.0.0"
git checkout 959b6a1dcea71e641a163b9a0be6bce2ee9dd7c4
mvn clean install



