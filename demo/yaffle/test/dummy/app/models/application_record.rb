# test/dummy/app/models/application_record.rb
 
class ApplicationRecord < ActiveRecord::Base
  include Yaffle::ActsAsYaffle
 
  self.abstract_class = true
end