#!/usr/bin/env ruby
ENV['RSPEC'] = 'true'
autotest_cmd = 'autotest'
autotest_cmd = "call #{autotest_cmd}" if RUBY_PLATFORM =~ /mswin/
system autotest_cmd
