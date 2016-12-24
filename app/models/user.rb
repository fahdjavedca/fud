class User < ActiveRecord::Base
	acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :fud_entries

  # Restrict access to Wealthsimple domain
  validate :presence_domain_email

	def presence_domain_email     
	#if email domain not on valid list then return an error.     
	#First parse the email to return only the last 2 parts of the email address     
	emailarray = email.split("@")[1].split(".")
	emaildomain = emailarray[emailarray.length-2] +'.' +  emailarray[emailarray.length-1]
	#Second do a count on database to see if the upper case domain exists and is valid
	emailct = Emaildomain.count(:all, :conditions => ["domain = ? AND validstatus = '1'", emaildomain.upcase])
	    #Third generate an error if the domain is not valid
	    if (emailct < 1)
	       errors.add(:email, 'This email domain is not valid. ' + emaildomain.upcase )
	    end
	end

end

