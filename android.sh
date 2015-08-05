# Linux execute helpers
alias ii='xdg-open'

ANDROID_NDK=/opt/android-ndk
ANDROID_SDK=/opt/android-sdk-linux
export ANDROID_HOME=$ANDROID_SDK
GENYMOTION_DIR=/data/vms/genymotion/genymotion
export PATH=$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$GENYMOTION_DIR:$ANDROID_NDK

DART_EDITOR_DIR=/opt/dart
export PATH=$PATH:$DART_EDITOR_DIR

export DART_SDK=$DART_EDITOR_DIR/dart-sdk
PATH=$PATH:$DART_SDK/bin
