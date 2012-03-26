class Campaign < ActiveRecord::Base
  has_many :messages
end
