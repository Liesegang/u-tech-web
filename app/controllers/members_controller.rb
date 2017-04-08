class MembersController < ApplicationController
  def index
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      log_in @member
      flash[:success] = "u-Tech へようこそ"
      redirect_to @member
    else
      render 'new'
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(member_params)
      flash[:success] = "Profile updated"
      redirect_to @member
    else
      render 'edit'
    end
  end

  def destroy
  end

  def member_params
    params.require(:member).permit(:first_name, :last_name, :nickname, :email, :password, :password_confirmation, :university, :major, :grade)
  end
end
