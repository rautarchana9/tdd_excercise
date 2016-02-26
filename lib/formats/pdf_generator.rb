require 'prawn'
require_relative 'file_generator'

class FileTypes::PdfGenerator < FileTypes::FileGenerator

  def self.file_type
    "pdf"
  end

  def self.export_user_details(details)
    file = details[:name] + ".pdf"
    Prawn::Document.generate(file)do
      details.each{|key, value| text "#{key} : #{value}"}
    end
    path = File.expand_path(file)
    file.close
    path
  end
end