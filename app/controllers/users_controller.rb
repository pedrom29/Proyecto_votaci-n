class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def district
    district = District.find(params[:district_id]) 
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :lastname)
  end

end
