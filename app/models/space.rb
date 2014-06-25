class Space < ActiveRecord::Base
  belongs_to :lot
  validates_presence_of :lot
end
