#!/bin/sh -eu
find * \! -type d -printf '/%p\n' | tee ../program-name_files.log
