class Product < ApplicationRecord
  validates :name, presence: true 
  validates :name, uniqueness: true 
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  validates_format_of :image_url,  :with => %r{.(png|jpg|jpeg)$}i, :message => "must have valid image file type", :multiline => true 
  
  def is_discounted?
    return price < 10
  end

  def tax
    return price * 0.09
  end

  def total
    return tax + price
  end

  def friendly_created_at
    created_at.strftime('%m/%d/%Y')
  end

end
