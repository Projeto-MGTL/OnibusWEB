require 'spec_helper'

describe "localidades/show" do
  before(:each) do
    @localidade = assign(:localidade, stub_model(Localidade,
      :hora => "Hora",
      :data => "Data",
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hora/)
    rendered.should match(/Data/)
    rendered.should match(/Nome/)
  end
end
