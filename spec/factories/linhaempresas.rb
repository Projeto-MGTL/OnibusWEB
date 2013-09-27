# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :linhaempresa do
    nomelinha "MyString"
    nomeempresa "MyString"
    linha nil
    empresa nil
  end
end
