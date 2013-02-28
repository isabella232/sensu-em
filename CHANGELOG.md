# Changelog

## 1.0.x
* http and line protocol cleanups [#193, #151]
* reactor return value cleanup [#225]
* fix double require from gemspec [#284]
* fix smtp server reset behavior [#351]
* fix EM.system argument handling [#322]
* ruby 1.9 compat in smtp server and stomp protocols [#349, #315]
* fix pause from post_init [#380]

## 1.0.1 (February 27, 2013)
* use rb_wait_for_single_fd() on ruby 2.0 to fix rb_thread_select() deprecation
* fix epoll/kqueue mode in ruby 2.0 by removing calls to rb_enable_interrupt() [#248, #389]
* fix memory leak when verifying ssl cerificates [#403]
* fix initial connection delay [#393, #374]
* fix build on windows [#371]