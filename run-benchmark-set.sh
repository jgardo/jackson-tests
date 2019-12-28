echo 'Running tests for given java version'
sdk offline
sdk c >> results.txt

java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-2.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-6.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-10.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-20.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt

java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-2.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-6.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-10.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-20.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt

java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-2.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-6.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-10.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt
java -jar jackson-without-lambda/target/jackson-without-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-20.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt




java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-2.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-6.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-10.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/primitives/primitives-20.json" -p className="dev.jgardo.jackson.model.Primitives" >> results.txt

java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-2.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-6.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-10.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/objects/objects-20.json" -p className="dev.jgardo.jackson.model.Objects" >> results.txt

java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-2.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-6.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-10.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt
java -jar jackson-with-lambda/target/jackson-with-lambda-1.0-jar-with-dependencies.jar -p fileName="/mixed/mixed-20.json" -p className="dev.jgardo.jackson.model.Mixed" >> results.txt

