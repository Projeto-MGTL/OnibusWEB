# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :empresa do
    nome "MyString"
    cnpj "MyString"
    endereco "MyString"
    telefone "MyString"
    email "MyString"
  end
end
