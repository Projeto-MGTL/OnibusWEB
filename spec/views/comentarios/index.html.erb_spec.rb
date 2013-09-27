require 'spec_helper'

describe "comentarios/index" do
  before(:each) do
    assign(:comentarios, [
      stub_model(Comentario,
        :data => "Data",
        :hora => "Hora",
        :comentario => "Comentario",
        :usuario => nil,
        :linha => nil
      ),
      stub_model(Comentario,
        :data => "Data",
        :hora => "Hora",
        :comentario => "Comentario",
        :usuario => nil,
        :linha => nil
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => "Comentario".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
