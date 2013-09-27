# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :veiculo do
    marca "MyString"
    modelo "MyString"
    placa "MyString"
    chassi "MyString"
    numerocadeiras 1
    empresa nil
  end
end
