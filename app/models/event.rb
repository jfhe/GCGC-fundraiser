class Event < ActiveRecord::Base
  belongs_to :fundusers, :foreign_key => 'fundusers_id'
  attr_accessible :description, :org_name, :categories,:contact_email,:goal_money,:current_money,:num_donors, :fundusers_id

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :contact_email, :presence=> true,
                    :length=> { :maximum=>30 },
                    :format => { :with => email_regex }
  validates :description, :presence=> true
  validates :org_name, :presence => true,
                       :length => {:maximum => 30}
  validates :categories, :presence => true,
                         :length => {:maximum =>30}
  validates :goal_money, :presence => true
end