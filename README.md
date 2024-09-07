##### Ppx based tests demo without heavy dependecies

There are three submodules:
  * ppx_inline_test
  * ppx_here
  * ppx_expect


Where we removed heavy dependecies like base.
Currently:

  * ppx_inline_test_nobase. depends on mtime (instead of time_now)
    * no dependecy on `base`. AM_testing has been sacrificed
  * ppx_here_nobase no longer depends on `base`
  * ppx_expect_nobase no longer depedns on `base` (but on ppx_here_nobase + ppx_inline_test_nobase as before)
    * But there is also a dependecy on `sexplib`, but it should be removable in the future


Open questions:
* Will JaneStreet going to be angry because of dissecting of it's libraries? MIT license see
* Will anybody is going to use this?
* Any chance it could be accepted into main OPAM repo?
