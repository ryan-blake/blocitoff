# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ActiveRecord::Base
  belongs_to :user

  default_scope { order('updated_at DESC') }

  def time_left
    days = (created_at + 7.days - Time.now)/60/60/24
    hours = (created_at + 7.days - Time.now)/60/60 % 24
    if days == 0
      "#{hours.to_i} hours"
    else
      "#{days.to_i} days and #{hours.to_i} hours"
    end
  end

end
