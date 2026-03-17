#!/bin/zsh
set -eu

# This uses Wozniak's tss shell function

#


{
  print "<html>"
  print "<head>"
  print "<title>"
  print "Swift/T Spack Downloads"
  print "</title>"
  print "</head>"
  cat header.html
  print "<pre>"
  timestamp *.tar.gz(on)
  print "</pre>"
  print "<br/>"
  print "Updated: " $( date "+%Y-%m-%d %H:%M" )
  print "</html>"
} > index.html
