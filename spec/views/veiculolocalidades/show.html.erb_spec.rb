require 'spec_helper'

describe "veiculolocalidades/show" do
  before(:each) do
    @veiculolocalidade = assign(:veiculolocalidade, stub_model(Veiculolocalidade,
      :placa => "Placa",
      :data => "Data",
      :hora => "Hora",
      :nomelinha => "Nomelinha",
      :nomelocalidade => "Nomelocalidade",
      :localidadelinha => nil,
      :veiculolinha => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Placa/)
    rendered.should match(/Data/)
    rendered.should match(/Hora/)
    rendered.should match(/Nomelinha/)
    rendered.should match(/Nomelocalidade/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
