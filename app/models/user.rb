class User < ApplicationRecord
  rolify
  has_many :sales, :dependent => :destroy

  after_create :assign_role

  def assign_role
    add_role(:user)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

 def self.from_omniauth(auth)
   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.provider = auth.provider    # <-- added for production
     user.uid = auth.uid              # <-- added for production
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
     # If you are using confirmable and the provider(s) you use validate emails,
     # uncomment the line below to skip the confirmation emails.
     # user.skip_confirmation!
   end #ends for loop
 end #ends method
end #ends User
