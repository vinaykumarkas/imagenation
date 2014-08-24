require 'spec_helper'

describe SearchHelper, :type => :helper do
  describe "#current_page_numbers" do
    it 'calculates first and last displayed page number' do
      @pagination_info = {page: 10, pages: 200}
      expect(helper.current_page_numbers).to eq((1..10).to_a)

      @pagination_info = {page: 14, pages: 200}
      expect(helper.current_page_numbers).to eq((11..20).to_a)

      @pagination_info = {page: 101, pages: 200}
      expect(helper.current_page_numbers).to eq((101..110).to_a)
    end

    it 'last page should not exceed total pages' do
      @pagination_info = {page: 55, pages: 56}
      expect(helper.current_page_numbers).to eq((51..56).to_a)
    end  
    
    it 'last page should have extra pages' do
      @pagination_info = {page: 1, pages: 2}
      expect(helper.current_page_numbers).to eq((1..2).to_a)
    end  
    
  end
end