class Product < ApplicationRecord

  include Sluggable

  belongs_to :category, counter_cache: true

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "500x500" }

  has_and_belongs_to_many :tags

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, uniqueness: true, presence: { message: "ne doit pas être vide"}, on: [:create, :update ]

  scope :online, -> { where(online:1)}

end
