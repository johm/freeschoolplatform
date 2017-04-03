class User < ApplicationRecord
  belongs_to :site
  has_many :course_registrations
  has_many :courses_registered_for,:through => :course_registrations,:source=>:course
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
