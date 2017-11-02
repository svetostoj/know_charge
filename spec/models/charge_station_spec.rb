# == Schema Information
#
# Table name: charge_stations
#
#  id              :integer          not null, primary key
#  street_number   :string
#  street          :string
#  city            :string
#  postcode        :string
#  state           :string
#  charge_kwh      :float
#  adapter_id      :integer
#  open_time       :time
#  close_time      :time
#  days_of_week    :string
#  price_kwh_cents :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe ChargeStation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
