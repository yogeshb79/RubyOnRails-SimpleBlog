class Post < ApplicationRecord
    has_many :comment
    # more details http://guides.rubyonrails.org/active_record_validations.html
    validates :title,presence: true , length: { minimum: 5 ,
                                        too_short: "%{count} too small length" }
end
