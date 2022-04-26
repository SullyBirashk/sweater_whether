require 'rails_helper'

RSpec.describe User, type: :model do

 describe 'relationships' do
  # it { should belong_to(:) }
  # it { should have_many : }
  # it { should have_many(:).through(:) }
 end

 describe 'validations' do
  it { should validate_uniqueness_of(:email) }
 end
end
