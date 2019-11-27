class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    # The input for the category attribute must include "Fiction" and "Non-Fiction"
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
