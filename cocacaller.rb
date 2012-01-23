require "rubygems"
require "pit"
require "ruby_gntp"
require "lib/growl_manager"
require "eventmachine"

@growl = Growl_manager.new
@growl.setup

EM.run do

@command = "aiueo"

  EM.add_periodic_timer(2) do
    @growl.shout("notify",@command,"arue??","http://www.hatena.ne.jp/users/sn/snaka72/profile.gif",false)
  end
    EM.add_periodic_timer(2) do
		EM.defer do
      @command = gets
        end
    end
end
