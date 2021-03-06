require "#{ File.dirname(__FILE__) }/lib/route_tiny_cms.rb"

class TinyCmsGenerator < Rails::Generator::NamedBase

  def manifest
    record do |m|
      m.directory "app/models/#{class_path}"
      m.template 'model.rb', "app/models/#{file_path}.rb"
      
      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "tiny_cms_create_#{table_name}"
      
      m.directory "app/controllers/#{class_path}"
      m.template 'controller.rb', "app/controllers/#{plural_name}_controller.rb"
      
      m.route_tiny_cms table_name
    end
  end

end
