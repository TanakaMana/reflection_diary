class Reflection < ApplicationRecord
  belongs_to :user
  has_many :memos, dependent: :destroy
  acts_as_taggable_on :labels
  acts_as_taggable

  accepts_nested_attributes_for :memos, reject_if: :reject_memos

  def reject_memos(attributes)
    attributes['memo'].blank?
  end
end
