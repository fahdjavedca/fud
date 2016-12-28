class User < ActiveRecord::Base
	# Checks to see if it's a wealthsimple email address
	validates :email, format: { with: /\A([\w\.%\+\-]+)@wealthsimple\.com\z/, message: "must be a Wealthsimple account." }
	# This is how you add multiple domains: http://stackoverflow.com/questions/4320386/how-can-i-use-devise-authentication-to-validate-that-a-sign-up-email-address-is
	acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :fud_entries
end

