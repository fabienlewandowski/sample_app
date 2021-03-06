# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nom        :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
	@titre = "Inscription"
  end

  def create
    User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:nom, :email)
  end

end
