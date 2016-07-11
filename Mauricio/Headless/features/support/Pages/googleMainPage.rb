def google_main_page
	@google_main_page ||= GoogleMainTestPage.new
end
class GoogleMainTestPage
	include Capybara::DSL
	attr_reader :title, :user_menu
	
	def initialize 
		#Element's selectors: id, class, etc
		#@search_textbox = page.find('#lst-ib')
		#@search_textbox = page.find('q')
		#@search_button = page.find('button[value=\'Buscar\']')
	end

	def click_on_button(button)
		#page.find('button[value=\''+button+'\']').click
		click_button button
	end
	
	def set_search_box(value)
		#@search_textbox.set(value)
		fill_in 'q', :with => value
	end
	
end
	