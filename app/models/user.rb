class User < ApplicationRecord
  has_many :uploads
  has_many :comments
end
