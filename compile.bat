:: Download dependencies using curl
curl -o lib/activation-1.1.1.jar https://repo1.maven.org/maven2/javax/activation/activation/1.1.1/activation-1.1.1.jar
curl -o lib/javax.mail-1.6.2.jar https://repo1.maven.org/maven2/javax/mail/javax.mail-api/1.6.2/javax.mail-api-1.6.2.jar

:: Compile Main.java
javac -cp "lib/*" src/Main.java -d out/

:: Temporary directory for compilation
mkdir tmp
cd tmp

:: Unzip dependencies
jar xf ../lib/activation-1.1.1.jar
jar xf ../lib/javax.mail-1.6.2.jar

:: Copy class files and resources
cp -r ../out/* .
cp -r ../res .

:: Produce .jar file
jar cfm ../WaitingList.jar ../META-INF/MANIFEST.MF .

:: Delete temporary folders
cd ..
rmdir out /S /Q
rmdir tmp /S /Q
