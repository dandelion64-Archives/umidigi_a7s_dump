#!/bin/bash

cat product/priv-app/GmsCoreGo/GmsCoreGo.apk.* 2>/dev/null >> product/priv-app/GmsCoreGo/GmsCoreGo.apk
rm -f product/priv-app/GmsCoreGo/GmsCoreGo.apk.* 2>/dev/null
