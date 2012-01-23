require "rubygems"
require "pit"
require "ruby_gntp"

class Growl_manager
  def setup
   @growl = GNTP.new("Ruby/GNTP self test")
   @growl.register({:notifications => [{
     :name     => "notify",
     :enabled  => true,
   }]})
   self
  end

  def shout(name,title,text,icon,sticky=true)
@growl.notify({
  :name  => name,
  :title => title,
  :text  => text,
  :icon  => icon,
  :sticky=> sticky,
})
  end

  

end
