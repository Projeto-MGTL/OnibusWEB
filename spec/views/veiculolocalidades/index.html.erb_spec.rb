require 'spec_helper'

describe "veiculolocalidades/index" do
  before(:each) do
    assign(:veiculolocalidades, [
      stub_model(Veiculolocalidade,
        :placa => "Placa",
        :data => "Data",
        :hora => "Hora",
        :nomelinha => "Nomelinha",
        :nomelocalidade => "Nomelocalidade",
        :localidadelinha => nil,
        :veiculolinha => nil
      ),
      stub_model(Veiculolocalidade,
        :placa => "Placa",
        :data => "Data",
        :hora => "Hora",
        :nomelinha => "Nomelinha",
        :nomelocalidade => "Nomelocalidade",
        :localidadelinha => nil,
        :veiculolinha => nil
      )
    ])
  end

  it "renders a list of veiculolocalidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => "Nomelinha".to_s, :count => 2
    assert_select "tr>td", :text => "Nomelocalidade".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
