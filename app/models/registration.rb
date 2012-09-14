class Registration < ActiveRecord::Base
  attr_accessor :agree_terms

  has_many :participants, :dependent => :destroy

  accepts_nested_attributes_for :participants
end
