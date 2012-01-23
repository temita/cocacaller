 require File.dirname(__FILE__) + '/spec_helper'
 require "cocacaller"

 describe Growl_manager do
 before do
 @g = Growl_manager.new
 end
   describe "を初期化する場合" do
    it "はインスタンスを返す" do
      growl = Growl_manager.new
      growl.should_not nil
    end
    it "が初期化されたら" do
      @g.setup.should_not be_nil
    end
   end
   describe "が通知する場合" do
     it "の引数が足りていれば" do
         @g.setup
         @g.shout("notify","arue?","arue??","http://www.hatena.ne.jp/users/sn/snaka72/profile.gif",false).should be_nil
     end
     it "の引数がへんだったら" do
		lambda{@g.shout("","")}.should raise_error
     end
   end
 end

