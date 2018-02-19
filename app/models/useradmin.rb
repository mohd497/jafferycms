class Useradmin < ActiveRecord::Base

  validates_confirmation_of :password

  validates :username, :password, presence: true

end
