class Product < ApplicationRecord

  include Sluggable

  belongs_to :category, counter_cache: true

  has_and_belongs_to_many :tags

  validates :name, uniqueness: true, presence: { message: "ne doit pas être vide"}, on: [:create, :update ]

  scope :online, -> { where(online:1)}

end
