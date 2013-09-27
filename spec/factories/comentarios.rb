# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comentario do
    data "MyString"
    hora "MyString"
    comentario "MyString"
    usuario nil
    linha nil
  end
end
