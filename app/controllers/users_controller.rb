class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes

    if user_signed_in?
      @name = @user.name
      @profile = @user.profile
      @occupation = @user.occupation
      @position = @user.position
    end
  end
end
