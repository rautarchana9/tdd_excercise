require 'file_generator'

RSpec.describe "FileTypes::FileGenerator" do

  describe ".file_type" do
    it "returns the file format" do
      expect(FileTypes::FileGenerator.file_type).to eq("Not implemented")
    end
  end 

  describe ".export_user_details" do
    it "abstract base class method" do
      data = double(Hash)
      expect(FileTypes::FileGenerator.export_user_details(data)).to eq("Not implemented")
    end
  end
end