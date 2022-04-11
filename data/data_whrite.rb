def preserve_persons
  person_store = @persons.map do |person, _index, _id|
    if person.instance_of?(Teacher)
      {
        occupation: 'Teacher',
        name: person.name,
        age: person.age,
        specialization: person.specialization
      }
    else
      {
        occupation: 'Student',
        name: person.name,
        age: person.age,
        parent_permission: person.parent_permission
      }
    end
  end
  File.open('./data/persons.json', 'w') do |file|
    file.puts(JSON.pretty_generate(person_store))
  end
end