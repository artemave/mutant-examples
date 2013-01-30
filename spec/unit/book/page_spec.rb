require 'spec_helper'

describe Book, '#page' do
  subject(:book) { described_class.new(pages) }

  let(:page) { Page.new(1) }

  context 'when page exists' do
    let(:pages) { [page] }
    
    it 'should return page' do
      expect(book.page(1)).to be(page)
    end
  end

  context 'when page does not exist' do
    let(:pages) { [] }
  
    it 'should raise error' do
      expect { book.page(2) }.to raise_error(
        RuntimeError, "Book does not have a page with number: 2"
      )
    end
  end
end
