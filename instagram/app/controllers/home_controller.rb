class HomeController < ApplicationController
  def index
@user=Instagram.user_follows
	@media_arr = Array.new
for user in @user
	@instagram = Instagram.user_recent_media(user.id)
	@media_arr.push(@instagram)
end
end
end


