class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD

=======
         
>>>>>>> 90fc6bb03e09fd04505562c5c1ed2cf10111c49b
  enum role: [:customer, :caregiver, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :customer
  end
end

