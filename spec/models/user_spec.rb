require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before(:each) do
      @user = FactoryBot.create(:user)
    end

    it 'has a valid factory' do
      expect(@user).to be_valid
    end

    it 'validates uniqueness of email' do
      expect(@user).to validate_uniqueness_of(:email)
    end

  end
end
