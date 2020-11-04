require 'rails_helper'

 RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
  context '新規登録がうまくいくとき' do
    it 'すべての情報が正しいフォーマットで入力されていれば登録できる' do
      expect(@user). to be_valid
    end
  end

  context '新規登録がうまくいかないとき' do
    it "nicknameが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空では登録できない" do
      @user.email = "" 
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it '@が含まれていないメールアドレスは登録できない' do
      @user.email = 'kkkgmail.com'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end
    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank", 'Password  Include both letters and numbers')
    end
    it 'passwordが５文字以下であれば登録できない' do
      @user.password = 'a0000'
      @user.password_confirmation = 'a0000'
      @user.valid?
      expect(@user.errors.full_messages). to include('Password is too short (minimum is 6 characters)', 'Password  Include both letters and numbers')
    end
    it 'passwordが英字のみだと登録できない' do
      @user.password = 'aaaaaa'
      @user.password_confirmation = 'aaaaaa'
      @user.valid?
      expect(@user.errors.full_messages). to include('Password  Include both letters and numbers')
    end
    it 'passwordが数字のみだと登録できない' do
      @user.password = '123456'
      @user.password_confirmation = '123456'
      @user.valid?
      expect(@user.errors.full_messages). to include('Password  Include both letters and numbers')
    end
    it 'passwordが存在してもpassword_confirmationが空では登録できない' do
      @user.password
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages). to include("Password confirmation doesn't match Password")
    end
  end
 end
end
