# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cidadeempresa do
    nomecidade "MyString"
    nomeempresa "MyString"
    empresa nil
    cidade nil
  end
end
