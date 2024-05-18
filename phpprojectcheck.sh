#!/bin/bash
ls -al | grep php-hello-world
if [ echo $? -eq 0]; then
echo "File Exists"
else
echo "Clone Project"
git clone https://github.com/silarhi/php-hello-world.git
fi
