module PeopleHelper

  def alien?(person)
    person.alien ? 'danger' : 'success'
  end
end
