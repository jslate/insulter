class Insult < ActiveRecord::Base
  has_many :thumbs

  def up_thumbs
    self.thumbs.select{|t|t.up}.count
  end

  def down_thumbs
    self.thumbs.select{|t|!t.up}.count
  end

end
