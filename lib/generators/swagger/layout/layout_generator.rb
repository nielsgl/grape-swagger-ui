module Swagger
  module Generators
    class LayoutGenerator < ::Rails::Generators::Base
      desc 'Setup a dedicated layout for the swagger-ui'

      class_option :view_engine, type: :string, aliases: '-v'

      def self.source_root
        File.expand_path('../templates', __FILE__)
      end

      def create_swagger_layout        
        if options[:view_engine] == 'haml'
          puts "haml!"
          template 'swagger.html.haml', File.join('app', 'views', 'layouts', 'swagger.html.haml')
        elsif options[:view_engine] == 'erb'
          puts "erb!"
          template 'swagger.html.erb', File.join('app', 'views', 'layouts', 'swagger2.html.erb')
        else
          puts "no!"
        end
        create_file "config/initializers/grape_swagger_ui.rb", "# Add initialization content here"
      end        
    end
  end
end