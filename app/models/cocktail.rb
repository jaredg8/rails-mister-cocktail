class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness:true, presence:true
  accepts_nested_attributes_for :doses, reject_if: :all_blank, allow_destroy: true
end
