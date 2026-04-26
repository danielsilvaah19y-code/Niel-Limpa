#!/bin/sh

# Script de inicialização do Gradle para sistemas Linux/macOS
# Este código diz ao GitHub como começar a compilar seu app.

case "`uname`" in
  CYGWIN* | MINGW* | MSYS*)
    export CLASSPATH_SKIP_ROOT_SEARCH=1
    ;;
esac

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Localiza o arquivo jar do gradle
if [ -z "$GRADLE_USER_HOME" ] ; then
    GRADLE_USER_HOME=$HOME/.gradle
fi

# Comando para executar o gradle
exec sh -c "echo 'Iniciando compilacao Android...' && ./gradlew assembleDebug"
