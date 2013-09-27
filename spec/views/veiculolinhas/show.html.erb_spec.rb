require 'spec_helper'

describe "veiculolinhas/show" do
  before(:each) do
    @veiculolinha = assign(:veiculolinha, stub_model(Veiculolinha,
      :veiculo => nil,
      :linha => nil,
      :nomelinha => "Nomelinha",
      :placa => "Placa"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Nomelinha/)
    rendered.should match(/Placa/)
  end
end
