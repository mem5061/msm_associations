class Actor < ApplicationRecord

has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")
has_many(:movies, :class_name => "Movie", :foreign_key =>"id", :through => :characters)

# - name: must be present; must be unique in combination with dob
validates :name, :presence => true, :uniqueness => { :scope => :dob }

end
