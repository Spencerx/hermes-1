class Subscription < ActiveRecord::Base
  set_table_name "msg_types_people"
  belongs_to :person
  belongs_to :msg_type
  belongs_to :delay
  belongs_to :delivery

  has_many :messages, :foreign_key => :msg_type_id
  has_many :filters, :class_name => "SubscriptionFilter", :dependent => :destroy
end