class Category < ApplicationRecord

  include Sluggable

  has_many :products

  validates :name, uniqueness: true, presence: { message: "ne doit pas être vide"}

end
