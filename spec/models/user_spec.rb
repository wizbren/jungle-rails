require 'rails_helper'


RSpec.describe User, type: :model do

  describe 'Validations' do
    
    it 'is valid with all required fields' do
      user = User.new(first_name: 'Jane', last_name: 'Doe', email: 'jane@example.com', password: 'password', password_confirmation: 'password')
      expect(user).to be_valid
    end

    it 'is not valid if password and confirmation do not match' do
      user = User.new(first_name: 'Jane', last_name: 'Doe', email: 'jane@example.com', password: 'password', password_confirmation: 'notpassword')
      user.validate
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'is not valid without a password' do
      user = User.new(first_name: 'Jane', last_name: 'Doe', email: 'jane@example.com', password: nil, password_confirmation: nil)
      user.validate
      expect(user.errors.full_messages).to include("Password can't be blank")
    end

    it 'is not valid without an email' do
      user = User.new(first_name: 'Jane', last_name: 'Doe', email: nil, password: 'password', password_confirmation: 'password')
      user.validate
      expect(user.errors.full_messages).to include("Email can't be blank")
    end

    it 'is not valid without first name' do
      user = User.new(first_name: nil, last_name: 'Doe', email: 'jane@example.com', password: 'password', password_confirmation: 'password')
      user.validate
      expect(user.errors.full_messages).to include("First name can't be blank")
    end

    it 'is not valid without last name' do
      user = User.new(first_name: 'Jane', last_name: nil, email: 'jane@example.com', password: 'password', password_confirmation: 'password')
      user.validate
      expect(user.errors.full_messages).to include("Last name can't be blank")
    end

    it 'is not valid if email is not unique (isnt case sensitive)' do
      User.create!(first_name: 'Jane', last_name: 'Doe', email: 'test@test.com', password: 'password', password_confirmation: 'password')
      user = User.new(first_name: 'John', last_name: 'Smith', email: 'TEST@TEST.COM', password: 'password123', password_confirmation: 'password123')
      user.validate
      expect(user.errors.full_messages).to include("Email has already been taken")
    end
  end

  describe '.authenticate_with_credentials' do

  end
end