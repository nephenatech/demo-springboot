@ECHO OFF
SET BASE_DIR=%~dp0
SET WRAPPER_JAR=%BASE_DIR%\.mvn\wrapper\maven-wrapper.jar
SET PROPS_FILE=%BASE_DIR%\.mvn\wrapper\maven-wrapper.properties

IF NOT EXIST "%WRAPPER_JAR%" (
  ECHO Missing Maven wrapper jar. Download it manually or run the project on Linux/macOS first.
  EXIT /B 1
)

java -classpath "%WRAPPER_JAR%" -Dmaven.multiModuleProjectDirectory="%BASE_DIR%" org.apache.maven.wrapper.MavenWrapperMain %*
