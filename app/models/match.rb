class Match < ActiveRecord::Base
  belongs_to :new_match, foreign_key: :match_id, class_name: 'User'
  belong_to  :user
 


  def create
   other_users=User.all.select {|user| user if user != current_user}
   user_id = current_user.id
   end



end
