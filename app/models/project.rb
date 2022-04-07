class Project < ApplicationRecord
end

#Presence validator for title and description
class Project < ApplicationRecord
    validates_presence_of :title, :description
  end