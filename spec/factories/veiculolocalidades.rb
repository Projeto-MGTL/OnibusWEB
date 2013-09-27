# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :veiculolocalidade do
    placa "MyString"
    data "MyString"
    hora "MyString"
    nomelinha "MyString"
    nomelocalidade "MyString"
    localidadelinha nil
    veiculolinha nil
  end
end
