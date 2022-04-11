def read_person
  if File.exist?('./data/persons.json')

    persons = JSON.parse(File.read('./data/persons.json'))
    persons.map do |person|
      if person['occupation'] == 'Teacher'
        Teacher.new(person['age'], person['specialization'], person['name'])
      else
        Student.new(person['age'], person['classroom'], person['name'], person['parent_permission'])
      end
    end
  else
    []
  end
end
