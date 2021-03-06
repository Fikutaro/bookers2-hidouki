class RelationshipsController < ApplicationController
  
def follow
  current_user.follow(params[:id])
  redirect_back(fallback_location: root_path)
end

def unfollow
  current_user.unfollow(params[:id])
  redirect_back(fallback_location: root_path)
end

def follower
    user = User.find(params[:user_id])
    @users = user.followings
end

 def followed
    user = User.find(params[:user_id])
    @users = user.followed
 end


end
