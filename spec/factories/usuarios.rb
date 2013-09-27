# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    nome "MyString"
    login "MyString"
    senha "MyString"
    email "MyString"
  end
end
