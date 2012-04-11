class UserInfo < ActiveRecord::Base
	belongs_to :user, :foreign_key => "stuNo"
end
