require "csv_generator"
require "file_generator"

RSpec.describe "FileTypes::CsvGenerator" do

  describe ".file_type" do
    it "returns the file format" do
      expect(FileTypes::CsvGenerator.file_type).to eq("csv")
    end
  end

  describe ".export_user_details" do
    let (:data) {{name: "User", age: 18}}
    let (:path) {FileTypes::CsvGenerator.export_user_details(data)}
    
    it "exports user details stored in dictionary to csv file"do
      expect(path).to be_an_instance_of(String) 
    end
    it "exports user details stored in dictionary to csv file"do
      expect(File).to exist("/Users/archanaraut/Documents/TDD/User.csv")
    end
  end
end
