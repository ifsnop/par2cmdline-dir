AC_DEFUN([AX_SET_ORIGIN], [
  AC_PATH_PROG([AX_GIT], [git], [:])
  if test "$AX_GIT" != :; then
    AC_DEFINE_UNQUOTED([SOURCE_URL], 
      "`git config remote.origin.url 2>/dev/null`", [The location of the source])
    AC_DEFINE_UNQUOTED([COMMIT], 
      "`git rev-parse HEAD 2>/dev/null`", [The commit the program was built from])
    AC_DEFINE_UNQUOTED([XXXX], 
      "`echo $PWD`", [The commit the program was built from])
  fi
])

