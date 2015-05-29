# Linux execute helpers
alias ii='xdg-open'

ANDROID_SDK=/opt/android-sdk-linux
GENYMOTION_DIR=/data/vms/genymotion/genymotion
export PATH=$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$GENYMOTION_DIR

DART_EDITOR_DIR=/opt/dart
export PATH=$PATH:$DART_EDITOR_DIR

export DART_SDK=$DART_EDITOR_DIR/dart-sdk
PATH=$PATH:$DART_SDK/bin
