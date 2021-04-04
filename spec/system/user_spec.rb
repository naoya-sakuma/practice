# bundle exec rspec spec/system/user_spec.rb

require 'rails_helper'
RSpec.describe 'ユーザー機能', type: :system do
  describe 'メールアドレスによるユーザー新規登録' do
    context 'メールアドレスを入力せずに登録した場合' do
      it 'エラーが発生し、メールアドレスを入力してくださいと表示される' do
        visit root_path
        click_on 'Sign up'
        fill_in 'Password', with: 'test@test.com'
        fill_in 'Password confirmation', with: 'test@test.com'
        click_on 'Sign up'
        expect(page).to have_content "Email can't be blank"
      end
    end
  end
end
