class Message < ActiveRecord::Base
  belongs_to :campaign

  validates :body, :presence => true
end
