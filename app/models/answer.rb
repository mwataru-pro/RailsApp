class Answer < ApplicationRecord
  belongs_to : question

  validates :content, :name, presence: {maessage: 'は、必須項目です。'}
end
