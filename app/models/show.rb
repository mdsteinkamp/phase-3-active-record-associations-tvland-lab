class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.characters.map { |character| "#{character.actor.first_name} #{character.actor.last_name}"}
  end
  
end