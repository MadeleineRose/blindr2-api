
class Api::V1::UsersController< ApplicationController
  skip_before_action :authenticate!
  def index
    render({json: User.all})
  end

  def show
    render({json: User.find(params[:id])})
  end

  def create
    binding.pry
    user = User.create(user_params)
    render json: user
  end

  private
  def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :username, :age, :gender)
  end
end
