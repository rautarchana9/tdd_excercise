require_relative 'file_generator'

class FileTypes::CsvGenerator < FileTypes::FileGenerator
  
  def self.file_type
    "csv"
  end

  def self.export_user_details(details)
    file = File.open(details[:name]+".csv", "w+")
    details.each do |key, value|
      file << "#{key}, #{value}\n"
    end
    path = File.expand_path(file)
    file.close
    path
  end
end