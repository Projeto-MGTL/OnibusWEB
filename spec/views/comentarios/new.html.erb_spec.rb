require 'spec_helper'

describe "comentarios/new" do
  before(:each) do
    assign(:comentario, stub_model(Comentario,
      :data => "MyString",
      :hora => "MyString",
      :comentario => "MyString",
      :usuario => nil,
      :linha => nil
    ).as_new_record)
  end

  it "renders new comentario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comentarios_path, "post" do
      assert_select "input#comentario_data[name=?]", "comentario[data]"
      assert_select "input#comentario_hora[name=?]", "comentario[hora]"
      assert_select "input#comentario_comentario[name=?]", "comentario[comentario]"
      assert_select "input#comentario_usuario[name=?]", "comentario[usuario]"
      assert_select "input#comentario_linha[name=?]", "comentario[linha]"
    end
  end
end
