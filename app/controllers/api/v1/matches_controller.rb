class Api::V1::MatchesController< ApplicationController
skip_before_action :authenticate!,  only: [:create]
  def create
    # {"answers"=>["A", "C", "C", "D", "A", "A"],
    #  "controller"=>"api/v1/matches",
    #  "action"=>"create"}


    # Match.create(:user_id, :match_id)
  end



private
def match_params
  params.require(:matches).permit(:user_id, :match_id)
end

end
