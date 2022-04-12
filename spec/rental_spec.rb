require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
  context 'When adding a new rentals' do
    it 'Rental should have attributes' do
      date = '2022-04-12'
      book = Book.new('The Sun', 'Author')
      person = Person.new(24, 'Robert')

      rental = Rental.new(date, person, book)
      expect(rental).to be_an_instance_of(Rental)
      expect(rental.person.name).to eql('Robert')
      expect(rental.person.age).to eql(24)
      expect(rental.book.title).to eql('The Sun')
      expect(rental.book.author).to eql('Author')
    end

    it 'The add_rental method returns a rental and adds its to the book' do
      book = Book.new('Title', 'Author')
      person = Person.new(24, 'Mih')

      rental = person.add_rental('2022-03-04', book)

      expect(person.rentals).to eq [rental]
    end
  end
end
