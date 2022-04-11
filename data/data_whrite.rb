def save_persons
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

def save_books
  file = File.open('./data/books.json', 'w')
  book_store = @books.map do |book|
    { title: book.title, author: book.author }
  end
  file.puts(JSON.pretty_generate(book_store))
end
