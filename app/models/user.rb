class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Driver Relationship
  has_many :trips
  # Passenger Relationship


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :contactNumber, format: { with: /\d[0-9]\)*\z/, message: ": Please enter a UK number"}
  validates :email, uniqueness: true
  validates :vehicleCapacity, numericality: { only_integer: true }
  validates :name, format: { with: /\A[a-z A-Z]+\z/, message: "only allows letters" }, length: { maximum: 255, too_long: "%{count} characters is the maximum allowed" }
  validate  :postcode_valid
  validate  :numberplate_valid

  def postcode_valid
    if self.postcode.present? && !is_valid_postcode(self.postcode)
      errors.add(:postcode, ": Postcode is not valid")
    end
  end
  def numberplate_valid
    special_chars = "?<>',?[]}{=-)(*&^%$#`~{}"
    regex = /[#{special_chars.gsub(/./){|char| "\\#{char}"}}]/
    if self.numberPlate.present? && (self.numberPlate =~ regex)
      errors.add(:postcode, ": Numberplate is not valid")
    end
  end

  def is_valid_postcode(postcode)
    !!(postcode =~ /^\s*((GIR\s*0AA)|((([A-PR-UWYZ][0-9]{1,2})|(([A-PR-UWYZ][A-HK-Y][0-9]{1,2})|(([A-PR-UWYZ][0-9][A-HJKSTUW])|([A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRVWXY]))))\s*[0-9][ABD-HJLNP-UW-Z]{2}))\s*$/i)
  end
end
