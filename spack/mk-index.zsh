#!/bin/zsh
set -eu

# Generate index.html
# Report simplified directory listing

{
  print "<html>"
  print "<head>"
  print "<title>"
  print "Swift/T Spack Downloads"
  print "</title>"
  print "</head>"

  cat header.html
  print "<br/>"

  for f in *.tar.gz(on)
  do
    print "<span style=\"font-family: monospace;\">"
    ls -lgoh --time-style=+"%Y-%m-%d %H:%M:%S" $f | \
      awk -f link.awk -v f=$f
    print "</span>"
    print "<br/>"
    print "<br/>"
  done
  print "<br/>"
  print "Updated: " $( date "+%Y-%m-%d %H:%M" )
  print "</html>"
} > index.html
