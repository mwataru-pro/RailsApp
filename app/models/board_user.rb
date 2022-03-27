class BoardUser < ApplicationRecord
  belongs_to :account
  has_may :board_message

  validates :nickname, presence: {message:'は、必須項目です。'}
end
