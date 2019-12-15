class Trip < ApplicationRecord
  validates :source, format: { with: /\A[0-9A-Za-z\s\-]+\z/ , message: "only allows letters" }, length: { maximum: 255, too_long: "%{count} characters is the maximum allowed" }
  validates :destination, format: { with: /\A[0-9A-Za-z\s\-]+\z/, message: "only allows letters" }, length: { maximum: 255, too_long: "%{count} characters is the maximum allowed" }
  validates :description, length: { maximum: 500, too_long: ": %{count} characters is the maximum allowed", minimum: 20, too_short: ": Come on, you can do better than that! Description requires 25 characters"}
  validate :date_cannot_be_in_the_past
  validate :petrol_must_be_sensible
  # has_many :trip_users
  #belongs_to :user

  def date_cannot_be_in_the_past
    if self.when.present? && self.when < Date.today
      errors.add(:when, ": You can't add a Trip in the past!")
    end
  end
  def petrol_must_be_sensible
    if self.petrolcost.present? && (self.petrolcost > 250 || self.petrolcost < 5)
      errors.add(:petrolcost, ": Petrol must be between £5 and £250")
    end
  end
end
