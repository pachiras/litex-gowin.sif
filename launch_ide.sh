#!/usr/bin/env bash

export QTWEBENGINE_DISABLE_SANDBOX=1
export QT_OPENGL=software
export QTWEBENGINE_CHROMIUM_FLAGS="--user-data-dir=/tmp/gw_profile"
export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/local/share/gowin/IDE/plugins/qt/platforms
export LD_LIBRARY_PATH=/usr/local/share/gowin/IDE/lib
export XDG_RUNTIME_DIR=/tmp/runtime-dir
mkdir -p /tmp/runtime-dir /tmp/gw_profile

env -i \
  DISPLAY=$DISPLAY \
  XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
  QT_QPA_PLATFORM_PLUGIN_PATH=$QT_QPA_PLATFORM_PLUGIN_PATH \
  LD_LIBRARY_PATH=$LD_LIBRARY_PATH \
  QTWEBENGINE_DISABLE_SANDBOX=1 \
  QTWEBENGINE_CHROMIUM_FLAGS=$QTWEBENGINE_CHROMIUM_FLAGS \
  QT_OPENGL=software \
  /usr/local/share/gowin/IDE/bin/gw_ide
