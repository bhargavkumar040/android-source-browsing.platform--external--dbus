/* config.h. Generated by cmake from config.h.cmake */

#ifndef _DBUS_CONFIG_H
#define _DBUS_CONFIG_H
/****************************/

#cmakedefine HAVE_GNUC_VARARGS 1

#cmakedefine DBUS_CONSOLE_AUTH_DIR "@DBUS_CONSOLE_AUTH_DIR@"
#cmakedefine DBUS_DATADIR  "@DBUS_DATADIR@"
#cmakedefine DBUS_BINDIR   "@DBUS_BINDIR@"
#cmakedefine DBUS_SYSTEM_CONFIG_FILE  "@DBUS_SYSTEM_CONFIG_FILE@"
#cmakedefine DBUS_SESSION_CONFIG_FILE "@DBUS_SESSION_CONFIG_FILE@"
#cmakedefine DAEMON_NAME "@DAEMON_NAME@"
#cmakedefine DBUS_SYSTEM_BUS_DEFAULT_ADDRESS  "@DBUS_SYSTEM_BUS_DEFAULT_ADDRESS@"
#cmakedefine DBUS_MACHINE_UUID_FILE "@DBUS_MACHINE_UUID_FILE@"
//#cmakedefine DBUS_SESSION_BUS_DEFAULT_ADDRESS "@DBUS_SESSION_BUS_DEFAULT_ADDRESS@"
#cmakedefine PACKAGE "@PACKAGE@"
/* Version number of package */
#cmakedefine VERSION "@VERSION@"
// test binaries
/* Full path to test file test/test-exit in builddir */
#define TEST_EXIT_BINARY          "@TEST_EXIT_BINARY@"
/* Full path to test file test/test-segfault in builddir */
#define TEST_SEGFAULT_BINARY      "@TEST_SEGFAULT_BINARY@"
/* Full path to test file test/test-service in builddir */
#define TEST_SERVICE_BINARY       "@TEST_SERVICE_BINARY@"
/* Full path to test file test/test-shell-service in builddir */
#define TEST_SHELL_SERVICE_BINARY "@TEST_SHELL_SERVICE_BINARY@"
/* Full path to test file test/test-sleep-forever in builddir */
#define TEST_SLEEP_FOREVER_BINARY "@TEST_SLEEP_FOREVER_BINARY@"

/* Some dbus features */
#cmakedefine DBUS_BUILD_TESTS 1
#cmakedefine DBUS_ENABLE_ANSI 1
#cmakedefine DBUS_ENABLE_VERBOSE_MODE 1
#cmakedefine DBUS_DISABLE_ASSERTS 1
#cmakedefine DBUS_DISABLE_CHECKS 1
/* xmldocs */
/* doxygen */
#cmakedefine DBUS_GCOV_ENABLED 1
/* abstract-sockets */
/* selinux */
#cmakedefine DBUS_BUS_ENABLE_DNOTIFY_ON_LINUX 1
/* kqueue */
#cmakedefine HAVE_CONSOLE_OWNER_FILE 1
#define DBUS_CONSOLE_OWNER_FILE "@DBUS_CONSOLE_OWNER_FILE@"

#cmakedefine DBUS_HAVE_ATOMIC_INT 1
#cmakedefine DBUS_USE_ATOMIC_INT_486 1
#if (defined(__i386__) || defined(__x86_64__))
# define DBUS_HAVE_ATOMIC_INT 1
# define DBUS_USE_ATOMIC_INT_486 1
#endif

#cmakedefine DBUS_BUILD_X11 1

#cmakedefine DBUS_VA_COPY @DBUS_VA_COPY_FUNC@

// headers
/* Define to 1 if you have dirent.h */
#cmakedefine   HAVE_DIRENT_H 1

/* Define to 1 if you have io.h */
#cmakedefine   HAVE_IO_H 1

/* Define to 1 if you have grp.h */
#cmakedefine   HAVE_GRP_H 1

/* Define to 1 if you have sys/poll.h */
#cmakedefine    HAVE_POLL 1

/* Define to 1 if you have sys/time.h */
#cmakedefine    HAVE_SYS_TIME 1

/* Define to 1 if you have sys/wait.h */
#cmakedefine    HAVE_SYS_WAIT 1

/* Define to 1 if you have time.h */
#cmakedefine   HAVE_TIME_H 1

/* Define to 1 if you have unistd.h */
#cmakedefine   HAVE_UNISTD_H 1

/* Define to 1 if you have stdio.h */
#cmakedefine   HAVE_STDIO_H 1

// symbols
/* Define to 1 if you have backtrace */
#cmakedefine   HAVE_BACKTRACE 1

/* Define to 1 if you have getgrouplist */
#cmakedefine   HAVE_GETGROUPLIST 1

/* Define to 1 if you have getpeerucred */
#cmakedefine   HAVE_GETPEERUCRED 1

/* Define to 1 if you have nanosleep */
#cmakedefine   HAVE_NANOSLEEP 1

/* Define to 1 if you have getpwnam_r */
#cmakedefine   HAVE_POSIX_GETPWNAM_R 1

/* Define to 1 if you have socketpair */
#cmakedefine   HAVE_SOCKETPAIR 1

/* Define to 1 if you have setenv */
#cmakedefine   HAVE_SETENV 1

/* Define to 1 if you have unsetenv */
#cmakedefine   HAVE_UNSETENV 1

/* Define to 1 if you have writev */
#cmakedefine   HAVE_WRITEV 1

// structs
/* Define to 1 if you have struct cmsgred */
#cmakedefine    HAVE_CMSGCRED 1

// system type defines
#if defined(_WIN32) || defined(_WIN64)
# define DBUS_WIN
# define DBUS_WIN_FIXME 1
#endif

#if defined(_WIN32) && !defined(_WIN32_WCE)
# define DBUS_WIN32
#endif

#if defined(_WIN64)
# define DBUS_WIN64
#endif

#if defined(_WIN32_WCE)
# define DBUS_WINCE
#endif

#if defined(_WIN32) || defined(_WIN64)
// mingw mode_t
# ifdef HAVE_STDIO_H
#  include <stdio.h>
# endif
# ifndef _MSC_VER
#  define uid_t int
#  define gid_t int
# else
#  define snprintf _snprintf
#  define strtoll _strtoi64
#  define strtoull _strtoui64
   typedef int mode_t;
# endif
# ifdef DBUS_VA_COPY
#  undef DBUS_VA_COPY // DBUS_VA_COPY kills mingw's bus-test
# endif
#endif	// defined(_WIN32) || defined(_WIN64)

#ifdef interface
#undef interface
#endif

#ifndef SIGHUP
#define SIGHUP	1
#endif

#cmakedefine DBUS_VERBOSE_C_S 1
#ifdef DBUS_VERBOSE_C_S
#define _dbus_verbose_C_S printf
#else
#define _dbus_verbose_C_S _dbus_verbose
#endif 

#endif  // _DBUS_CONFIG_H