require "pry"
require "active_record"
require "sqlite3"
require "sinatra"
require "sinatra/reloader"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'collection.db')

ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

##### Models #####

require_relative "models/album.rb"
require_relative "models/photo.rb"
require_relative "models/photographer.rb"

##### Controllers ######

require_relative "controllers/main.rb"
require_relative "controllers/albums.rb"
require_relative "controllers/photographers.rb"
require_relative "controllers/photos.rb"

###### Database Setup #######

require_relative "database_setup.rb"

