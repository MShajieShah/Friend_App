class Post < ApplicationRecord
  belongs_to :user
  has_many :sub_posts, dependent: :destroy
  accepts_nested_attributes_for :sub_posts, reject_if: :all_blank,allow_destroy: true
end
