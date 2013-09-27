require 'spec_helper'

describe "localidades/index" do
  before(:each) do
    assign(:localidades, [
      stub_model(Localidade,
        :hora => "Hora",
        :data => "Data",
        :nome => "Nome"
      ),
      stub_model(Localidade,
        :hora => "Hora",
        :data => "Data",
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of localidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
