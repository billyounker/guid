class GetGuid < ActiveRecord::Base
  
  attr_accessible :first_name, :middle_name, :last_name, :day_of_birth, :month_of_birth,
  :year_of_birth, :city_of_birth, :country_of_birth, :sex_at_birth, :government_id,
  :country_of_id, :uuid, :nation_of_birth, :nation_of_government_id, :birthdate

  validates :uuid, uniqueness: true

  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name,presence: true
  #validates :day_of_birth, presence: true
  #validates :month_of_birth, presence: true
  #validates :year_of_birth, presence: true
  validates :city_of_birth, presence: true
  validates :nation_of_birth, presence: true
  validates :sex_at_birth, presence: true
  validates :birthdate, presence: true

  #validates_numericality_of :month_of_birth, :greater_than_or_equal_to => 1,
    #:less_than_or_equal_to => 12, :only_integer => true

  #validates_numericality_of :day_of_birth, :greater_than_or_equal_to => 1,
    #:less_than_or_equal_to => 31, :only_integer => true

  #validates_numericality_of :year_of_birth, :greater_than_or_equal_to => 1980,
    #:less_than_or_equal_to => 2008, :only_integer => true
  

before_save :create_uuid
def create_uuid
    begin
      self.uuid=SecureRandom.base64(64)
    end while self.class.exists?(:uuid =>uuid)
  end

  
end
