#!/bin/sh

# autogen.sh for Cinelerra Unofficial CVS  Oct 14, 2003

echo "Running libtoolize ..."
libtoolize --force &&

echo "Running aclocal -I m4 ..." &&
aclocal -I m4 &&

echo "Running automake ..." &&
automake --foreign --add-missing &&

echo "Running autoconf ..." &&
autoconf &&

echo "Running libtoolize ..."
(cd libsndfile && libtoolize --force) &&

echo "Running aclocal in libsndfile ..." &&
(cd libsndfile && aclocal) &&

echo "Running automake in libsndfile ..." &&
(cd libsndfile && automake --foreign --add-missing) &&

echo "Running autoconf in libsndfile ..." &&
(cd libsndfile && autoconf) &&

echo "Finished" 
