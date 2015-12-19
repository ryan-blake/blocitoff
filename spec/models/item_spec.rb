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

require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create!(name: "New", user: @user) }

  describe "attributes" do

    it "should respond to name" do
      expect(item).to respond_to(:name)
    end

    it "should respond to user" do
      expect(item).to respond_to(:user)
    end
  end
end
