class Store < ActiveRecord::Base
  has_many :employees

  validate :check_store_name, :check_annual_revenue

  def check_store_name
    if name.length < 3
      errors.add(:name, "Name entity must be more than 3 chars long") 
    end
  end

  def check_annual_revenue
    if (annual_revenue.to_i <= 0) 
      errors.add(:annual_revenue, "Annual Revenue Must be more than 0");
    end   
  end

end
