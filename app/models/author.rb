class Author < ActiveRecord::Base
	has_many :todos
end
