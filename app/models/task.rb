class Task < ApplicationRecord
  validates :title, presence: true
  validate :deadline_should_be_after_now

  private
  def deadline_should_be_after_now
    errors.add(:base, I18n.t('errors.task.deadline_from_past')) if deadline and deadline.to_date.past?
  end
end
