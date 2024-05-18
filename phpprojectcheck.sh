#!/bin/bash
if ls -al | grep -q php-hello-world; then
    echo "File Exists"
else
    echo "Clone Project"
    git clone https://github.com/silarhi/php-hello-world.git
fi
