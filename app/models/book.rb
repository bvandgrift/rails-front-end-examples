class Book < ActiveRecord::Base
  attr_accessible :author, :description, :title
end
