class Article < ActiveRecord::Base
  belongs_to :user

  state_machine initial: :draft do
    state :draft, value: 0
    state :published, value: 1
  end

  event :publish do
    transition :pending => :published
    self.publish_at = Date.now
  end

  event :unpublish do
    transition :published => :draft
    self.publish_at = nil
  end
end
