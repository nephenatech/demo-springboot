#!/bin/sh
set -eu
BASE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
WRAPPER_JAR="$BASE_DIR/.mvn/wrapper/maven-wrapper.jar"
PROPS_FILE="$BASE_DIR/.mvn/wrapper/maven-wrapper.properties"

if [ ! -f "$WRAPPER_JAR" ]; then
  if [ ! -f "$PROPS_FILE" ]; then
    echo "Missing Maven wrapper properties file" >&2
    exit 1
  fi
  DIST_URL=$(grep '^wrapperUrl=' "$PROPS_FILE" | cut -d'=' -f2-)
  mkdir -p "$BASE_DIR/.mvn/wrapper"
  echo "Downloading Maven wrapper jar..."
  curl -fsSL "$DIST_URL" -o "$WRAPPER_JAR"
fi

exec java -classpath "$WRAPPER_JAR" -Dmaven.multiModuleProjectDirectory="$BASE_DIR" org.apache.maven.wrapper.MavenWrapperMain "$@"
