require 'spec_helper'

describe "usuarios/show" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :name => "Name",
      :sobrenome => "Sobrenome",
      :picture => "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Sobrenome/)
    rendered.should match(/Picture/)
  end
end
