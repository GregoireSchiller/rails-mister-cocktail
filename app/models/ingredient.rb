class Ingredient < ActiveRecord::Base
  has_many :doses
  before_destroy :check_for_dose
  validates :name, uniqueness: true, presence: true, exclusion: { in: [""] }

  private

  def check_for_dose
    if doses.count > 0
      errors.add_to_base("cannot delete ingredient while doses exist")
      return false
    end
  end

end
