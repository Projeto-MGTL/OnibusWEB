require 'spec_helper'

describe "veiculos/index" do
  before(:each) do
    assign(:veiculos, [
      stub_model(Veiculo,
        :marca => "Marca",
        :modelo => "Modelo",
        :placa => "Placa",
        :chassi => "Chassi",
        :numerocadeiras => 1,
        :empresa => nil
      ),
      stub_model(Veiculo,
        :marca => "Marca",
        :modelo => "Modelo",
        :placa => "Placa",
        :chassi => "Chassi",
        :numerocadeiras => 1,
        :empresa => nil
      )
    ])
  end

  it "renders a list of veiculos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Marca".to_s, :count => 2
    assert_select "tr>td", :text => "Modelo".to_s, :count => 2
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
    assert_select "tr>td", :text => "Chassi".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
