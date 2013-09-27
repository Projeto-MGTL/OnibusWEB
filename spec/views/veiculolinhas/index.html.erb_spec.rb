require 'spec_helper'

describe "veiculolinhas/index" do
  before(:each) do
    assign(:veiculolinhas, [
      stub_model(Veiculolinha,
        :veiculo => nil,
        :linha => nil,
        :nomelinha => "Nomelinha",
        :placa => "Placa"
      ),
      stub_model(Veiculolinha,
        :veiculo => nil,
        :linha => nil,
        :nomelinha => "Nomelinha",
        :placa => "Placa"
      )
    ])
  end

  it "renders a list of veiculolinhas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Nomelinha".to_s, :count => 2
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
  end
end
