class Event < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    has_rich_text :text
end
