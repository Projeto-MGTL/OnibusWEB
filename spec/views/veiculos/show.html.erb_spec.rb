require 'spec_helper'

describe "veiculos/show" do
  before(:each) do
    @veiculo = assign(:veiculo, stub_model(Veiculo,
      :marca => "Marca",
      :modelo => "Modelo",
      :placa => "Placa",
      :chassi => "Chassi",
      :numerocadeiras => 1,
      :empresa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Marca/)
    rendered.should match(/Modelo/)
    rendered.should match(/Placa/)
    rendered.should match(/Chassi/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
