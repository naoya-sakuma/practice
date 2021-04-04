# rspec spec/models/user_spec.rb

require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'バリデーションのテスト' do
    context 'emailが空の場合' do
      it 'バリデーションにかかる' do
        user = User.new(email: '', password: 'testtest')
        expect(user).not_to be_valid
      end
    end
  end
end
