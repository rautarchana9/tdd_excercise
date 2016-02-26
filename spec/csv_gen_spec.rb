require "generate_csv"
require "abstract_base_class"

RSpec.describe "FileTypes::CsvGenerator" do

  describe ".file_type" do
    it "returns the file format" do
      expect(FileTypes::CsvGenerator.file_type).to eq("csv")
    end
  end

  describe ".export_user_details" do
  	let (:data) {{name: "Archana", age: 26}}
  	let (:path) {FileTypes::CsvGenerator.export_user_details(data)}
    
    it "exports user details stored in dictionary to csv file"do
      expect(path).to be_an_instance_of(String) 
    end
  	it "exports user details stored in dictionary to csv file"do
      expect(File).to exist("/Users/archanaraut/Documents/TDD/Archana.csv")
  	end
  end
end
