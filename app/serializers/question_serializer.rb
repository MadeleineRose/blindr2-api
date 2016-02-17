class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :answer
  has_one :category
end
