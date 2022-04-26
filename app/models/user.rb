class User < ApplicationRecord
  validates_uniqueness_of :email
  has_secure_password

  before_create :set_access_token

  private

  def set_access_token
    self.access_token = generate_token
  end

  def generate_token
    loop do
      token = SecureRandom.hex(10)
      break token unless User.where(access_token: token).exists?
    end
  end
end
