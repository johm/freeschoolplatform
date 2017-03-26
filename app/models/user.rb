class User < ApplicationRecord
  belongs_to :site
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def to_s 
    name || email
  end

  def admin?
    role=="admin"
  end

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
end

#:confirmable
