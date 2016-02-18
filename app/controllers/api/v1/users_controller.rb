
class Api::V1::UsersController< ApplicationController
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
  params.require(:user).permit(:name, :email, :password_digest, :username, :age, :gender)
  end
end
