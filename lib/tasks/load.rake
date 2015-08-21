task :load => :environment do
  require 'active_record/fixtures'
  ActiveRecord::Base.establish_connection(:production)
  Fixtures.create_fixtures('/path/to/db/fixtures', 'tasks')
end
