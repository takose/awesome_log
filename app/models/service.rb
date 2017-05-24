class Service < ApplicationRecord
  has_many :auth_infos
  has_many :users, through: :authinfos
end
