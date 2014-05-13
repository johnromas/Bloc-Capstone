class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :role_assignments
  has_many :project_roles, through: :role_assignments
  has_many :dailys



  def name
    if self.l_name
      self.f_name + " " + self.l_name
    else
      self.f_name
    end
  end
end
