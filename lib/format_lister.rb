require_relative './formats/file_generator'

class FormatLister
    def initialize
      Dir[File.join(__dir__, 'formats', '*.rb')].each do |file|
        require file
      end
      format_objects = FileTypes.constants.map { |c| FileTypes.const_get(c) }
      @format_types = format_objects - [FileTypes::FileGenerator] 
    end

    def get_formats
        @format_types.map {|format| format.file_type}
    end

    def generate_file(data, input)
       @format_types[input-1].export_user_details(data) 
    end
end