require 'spec_helper'

describe Book, '#add_page' do
  subject(:book) { Book.new }
  let(:page)     { Page.new(1) }

  it 'should return self' do
    expect(book.add_page(page)).to be(book)
  end

  it 'should add page to book' do
    book.add_page(page)
    expect(book.pages).to include(page)
  end
end
