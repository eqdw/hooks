#!/usr/bin/env ruby

# JIRA tags can have a variable amount of digits
JIRA_TAG = /[A-Z]{2}-[0-9]{1,6}/
WARNING = <<END_WARNING
============================================================
================ WARNING! Invalid JIRA tag =================
============================================================
END_WARNING
msg = File.read ARGV[0]

if msg !~ JIRA_TAG
  puts WARNING
end

