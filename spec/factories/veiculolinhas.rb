# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :veiculolinha do
    veiculo nil
    linha nil
    nomelinha "MyString"
    placa "MyString"
  end
end
