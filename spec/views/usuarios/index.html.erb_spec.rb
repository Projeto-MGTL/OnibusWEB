require 'spec_helper'

describe "usuarios/index" do
  before(:each) do
    assign(:usuarios, [
      stub_model(Usuario,
        :name => "Name",
        :sobrenome => "Sobrenome",
        :picture => "Picture"
      ),
      stub_model(Usuario,
        :name => "Name",
        :sobrenome => "Sobrenome",
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sobrenome".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
