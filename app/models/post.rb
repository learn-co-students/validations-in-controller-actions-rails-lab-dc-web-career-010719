class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %W(Fiction Non-Fiction), message: "Invalid Category"}
  validates :content, length: { minimum: 100 }
end
