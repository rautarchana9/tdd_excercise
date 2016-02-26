require 'format_lister'

RSpec.describe "FormatLister"do

  let (:format_lister) {FormatLister.new}

  describe "#get_formats"do
    #context "When no formats available" do
     #it "returns empty list"do
     #expect(format_lister.get_formats).to eq([])
     #end
    #end  
    context "When formats available" do
       it "loads all file format generators from modules directory" do
          expect(format_lister.get_formats).to eq(["csv", "pdf"])     
       end
    end
  end

  describe "#generate_file" do
    let (:data) {{name: "user", age: 18}}
    let (:path) {format_lister.generate_file(data, 2)}
    
    it "exports user details stored in dictionary to desired format"do
      expect(path).to be_an_instance_of(String) 
    end
    it "exports user details stored in dictionary to pdf file"do
      expect(File).to exist("/Users/archanaraut/Documents/TDD/user.pdf")
    end
  end
end