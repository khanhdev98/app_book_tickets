APP_FLAVOR=$1
APP_LOGGER=$2
APP_INSTALLED=$3
APP_HOST=$4

changerValueEnv() {
  sed -i '' "s/$2.*/$2=$3/" "$1"
}

if [ -f ".halo.env" ]
then
  # Change Data
  changerValueEnv .halo.env APP_FLAVOR $APP_FLAVOR
  changerValueEnv .halo.env APP_HOST $APP_HOST
  changerValueEnv .halo.env APP_LOGGER $APP_LOGGER
  changerValueEnv .halo.env APP_INSTALLED $APP_INSTALLED

  # Build file, clean before build
  flutter packages pub run build_runner clean
  flutter packages pub run build_runner build --delete-conflicting-outputs
fi
