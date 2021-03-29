class Employee < ActiveRecord::Base
  belongs_to :store

  validate :must_have_names, :pay_per_hour, :belong_to_store
  def must_have_names
    if first_name.present?
      errors.add(:first_name, "Must had a string for first name")
    end
    if last_name.present?
      errors.add(:last_name, 'Must have a string for last name')
    end
  end

  def pay_per_hour
    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "Must be 40 or more and 200 or less")
    end
  end

  def belong_to_store
    if store == nil
      errors.add(:store, "Must belong to a store")
    end
  end




end
