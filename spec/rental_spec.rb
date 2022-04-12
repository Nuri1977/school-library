require_relative '../rental'

describe Rental do
  it 'something' do
    date = '2022-04-12'
    person = double('person')
    book = double('book')

    allow(person).to receive(:name) { 'Robert' }
    allow(book).to receive(:title) { 'The Sun' }

    rental = Rental.new(date, person, book)
    expect(rental).to be_an_instance_of(Rental)
    expect(rental.book).to eql(book)
    expect(rental.person.name).to eql('Robert')
    expect(rental.book.title).to eql('The Sun')
  end
end
