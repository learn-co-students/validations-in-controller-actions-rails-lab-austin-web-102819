class Author < ActiveRecord::Base
    include ActiveModel::Validations
    validates :email, uniqueness: true
    validates :name, presence: true
end
