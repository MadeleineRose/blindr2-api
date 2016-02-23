class Match < ActiveRecord::Base
  belongs_to :new_match, foreign_key: :match_id, class_name: 'User'
  belong_to  :user

end
