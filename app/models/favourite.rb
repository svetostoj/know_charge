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

class Favourite < ApplicationRecord
  belongs_to :charge_station
  belongs_to :vehicle
end
