
class Api::V1::UsersController< ApplicationController
  skip_before_action :authenticate!

  def index
    # render({json: current_user})
  end

  def show
    user = User.find(params[:id])
    render({json: user})
  end

  def me
    render({json: current_user})
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  private
  def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :username, :age, :gender)
  end
end
