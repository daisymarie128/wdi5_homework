require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'w'))

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'donaters.db'
  )

  class Donater < ActiveRecord::Base
  end