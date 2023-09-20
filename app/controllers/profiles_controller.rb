class ProfilesController < ApplicationController
  def show
    @profile = current_user.profile
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to profiles_path
    else 
      render :new, notice: '資料有誤'
    end
  end

  def edit
    @profile = helpers.current_user.profile
  end

  def update
    @profile = helpers.current_user.profile

    if @profile.update(profile_params)
      redirect_to profile_path
    else
      render :edit, notice: '無法更新'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :address, :phone, :gender, :birthday, :avatar).merge(user: current_user)
  end
end
