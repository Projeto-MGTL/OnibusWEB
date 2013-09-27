require 'spec_helper'

describe "comentarios/show" do
  before(:each) do
    @comentario = assign(:comentario, stub_model(Comentario,
      :data => "Data",
      :hora => "Hora",
      :comentario => "Comentario",
      :usuario => nil,
      :linha => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Hora/)
    rendered.should match(/Comentario/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
