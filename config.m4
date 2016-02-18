dnl $Id$
dnl config.m4 for extension lzw
dnl

PHP_ARG_ENABLE(lzw, whether to enable lzw support,
[  --enable-lzw           Enable lzw support])

if test "$PHP_LZW" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-lzw -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/lzw.h"  # you most likely want to change this
  dnl if test -r $PHP_LZW/$SEARCH_FOR; then # path given as parameter
  dnl   LZW_DIR=$PHP_LZW
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for lzw files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       LZW_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$LZW_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the lzw distribution])
  dnl fi

  dnl # --with-lzw -> add include path
  dnl PHP_ADD_INCLUDE($LZW_DIR/include)

  dnl # --with-lzw -> check for lib and symbol presence
  dnl LIBNAME=lzw # you may want to change this
  dnl LIBSYMBOL=lzw # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $LZW_DIR/$PHP_LIBDIR, LZW_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_LZWLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong lzw lib version or lib not found])
  dnl ],[
  dnl   -L$LZW_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(LZW_SHARED_LIBADD)

  PHP_NEW_EXTENSION(lzw, lzw.c, $ext_shared)
fi
