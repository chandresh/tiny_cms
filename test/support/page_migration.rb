
ActiveRecord::Migration.verbose       = false
# ActiveRecord::Base.logger             = Logger.new nil
ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => ":memory:"

ActiveRecord::Schema.define(:version => 1) do

  create_table :pages do |t|
    t.integer  :parent_id
    t.string   :permalink
    t.integer  :position
    t.string   :title
    t.string   :content
    t.string   :dynamic_route
    t.string   :dynamic_route_uuid
    t.timestamps
  end
end
