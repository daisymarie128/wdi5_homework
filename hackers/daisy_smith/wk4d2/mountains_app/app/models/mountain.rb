# == Schema Information
#
# Table name: mountains
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  image       :text
#  country     :string(255)
#  oceanheight :float
#  people      :float
#  climate     :float
#

class Mountain < ActiveRecord::Base
end
