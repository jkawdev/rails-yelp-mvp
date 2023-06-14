class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: { message: 'champ obligatoire' }
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: 'choose between chinese italian japanese french belgian' }
end
