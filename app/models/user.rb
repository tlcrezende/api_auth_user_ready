# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, 
          :confirmable,
          :registerable,
          :recoverable, 
          :rememberable, 
          :trackable,
          :validatable
          
  include DeviseTokenAuth::Concerns::User

  #pode ser no plural ou singular
  has_many :articles, dependent: :destroy
end
