class Api::V1::MatchesController< ApplicationController
# skip_before_action :authenticate!,  only: [:create]
  
  def create

  other_users=User.all.select {|user| user if user != current_user}
  user_id = current_user.id
  my_answers = params[:answers]
  personality = my_answers.max_by{|answer| my_answers.count(answer)}
  current_user.update(my_type: personality)
    binding.pry

  people_like_me = other_users.select {|user| user if user.my_type == current_user.my_type}

  end

  

private
def match_params
  params.require(:matches).permit(:user_id, :match_id)
end

end
