#!/bin/sh
. ./wvtest.sh

WVSTART "main test"
WVPASS true
WVPASS false
WVPASS true
WVFAIL false
WVPASSEQ "$(echo $(ls | sort))" "$(echo $(ls))"
WVPASSNE "5" "5 "
WVPASSEQ "" ""
(echo nested test; true); WVPASSRC $?
(echo nested fail; false); WVFAILRC $?

WVSTART another test
WVPASS true
