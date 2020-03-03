class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :hourly_rate, :store_id, presence: true
  validates :hourly_rate, numericality:
  { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  before_create :random_pass

  private
    def generate_code(number)
      charset = Array('A'..'Z') + Array('a'..'z')
      Array.new(number) { charset.sample }.join
    end

    def random_pass
      self.password = generate_code(8)
    end
end
