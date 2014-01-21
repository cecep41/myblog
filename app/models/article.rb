class Article < ActiveRecord::Base
  acts_as_commentable
  belongs_to :user

  scope :publish, -> { where(state: 1) }

  state_machine initial: :draft do
    state :draft, value: 0
    state :published, value: 1
  end

  # event :publish do
  #   transition :pending => :published
  #   self.publish_at = Date.now
  # end

  # event :unpublish do
  #   transition :published => :draft
  #   self.publish_at = nil
  # end
end
