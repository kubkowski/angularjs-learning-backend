require 'spec_helper'
require 'rails_helper'

describe "Navigation menu", js: true do
	it "changes active element depending on route" do
		visit '/'
		expect(find('.active').find('a').text).to eq('Home')

		click_link('Edges')
		expect(find('.active').find('a').text).to eq('Edges')
	end
	
end