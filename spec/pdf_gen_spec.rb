require "file_generator"
require "pdf_generator"

RSpec.describe "FileTypes::PdfGenerator" do

  describe ".file_type"do
    it "returns the file type"do
      expect(FileTypes::PdfGenerator.file_type).to eq("pdf")
    end
  end
  describe ".export_user_details" do
    let (:data) {{name: "User", age: 18}}
    let (:path) {FileTypes::PdfGenerator.export_user_details(data)}
    it "exports user details stored in dictionary to pdf file"do
      expect(path).to be_an_instance_of(String)
    end
    it "exports user details stored in dictionary to pdf file"do
      expect(File).to exist("/Users/archanaraut/Documents/TDD/User.pdf") 
    end
  end
end
