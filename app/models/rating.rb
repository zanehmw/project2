class Rating < ActiveRecord::Base
  belongs_to :restaurant
  # why'd you take these out?
  # validates_presence_of :restaurant
  # validates_inclusion_of :value, in => 1..10
end
