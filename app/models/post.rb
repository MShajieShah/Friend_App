class Post < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }
  belongs_to :user
  has_many :sub_posts, dependent: :destroy
  accepts_nested_attributes_for :sub_posts, reject_if: :all_blank, allow_destroy: true
end
