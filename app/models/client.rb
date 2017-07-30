class Client < ActiveRecord::Base
  include ActiveModel::Validations

  validates :name, :address, :phone, presence: true
  validates :email, presence: true, email: true
end
