class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
        :confirmable, 
        :recoverable, 
        :registerable,       
        :rememberable, 
        :trackable
        :validatable
  
  has_shortened_urls

end
