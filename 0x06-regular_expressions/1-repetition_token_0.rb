#!/usr/bin/env ruby
# A regular expression that matches hbt{2,5}n.
puts ARGV[0].scan(/hbt{2,5}n/).join
