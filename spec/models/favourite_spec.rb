# == Schema Information
#
# Table name: favourites
#
#  id                :integer          not null, primary key
#  charge_station_id :integer
#  vehicle_id        :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Favourite, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
