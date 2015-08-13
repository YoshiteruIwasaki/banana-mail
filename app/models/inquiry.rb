class Inquiry < ActiveRecord::Base
  validates :name, presence: { message: "氏名は必須です。" },length: { maximum: 100 ,too_long: "%{count}文字を超えています。"}
  validates :address1, presence: { message: "住所は必須です。" },length: { maximum: 250,too_long: "%{count}文字を超えています。" }
  validates :email, presence: { message: "メールアドレスは必須です。" },email: true, length: { maximum: 250,too_long: "%{count}文字を超えています。" }
  validates :content, presence: { message: "お問い合せ内容は必須です。" }, length: { maximum: 10000,too_long: "%{count}文字を超えています。" }
  validates :zip, length: { is: 7,message: "郵便番号は%{count}桁で入力してください。"  }
  validates :prefecture, numericality: {
            only_integer: true, greater_than_or_equal_to: 0,less_than_or_equal_to: 50,message: "都道府県を選択してください。"
          }
end
