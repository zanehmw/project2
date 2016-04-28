class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :reviews, :dependent => :destroy
  has_many :ratings, :dependent => :destroy
  belongs_to :category

  def average_rating
    return 5.5 if self.ratings.empty?

    total = 0
    self.ratings.each do |rat|
      total = total + rat.value
    end

    avg = total / self.ratings.count
  end



end
