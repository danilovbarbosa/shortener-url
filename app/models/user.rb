class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :confirmable, 
  devise :database_authenticatable, 
        :recoverable, 
        :registerable,       
        :rememberable, 
        :trackable,
        :validatable
  
  has_shortened_urls

end
