require 'rails_helper'


RSpec.describe User, type: :model do

  describe 'Validations' do
    
    it 'is valid with all required fields' do
      user = User.new(first_name: 'Jane', last_name: 'Doe', email: 'jane@example.com', password: 'password', password_confirmation: 'password')
      expect(user).to be_valid
    end
  end

  describe '.authenticate_with_credentials' do

  end
end