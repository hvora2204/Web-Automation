require 'watir'

describe 'Tumblr' do

	browser = Watir::Browser.new :chrome
	@browser = browser
	url = "https://www.tumblr.com"

it "should log in with the correct details" do
	browser.goto url('/login')
	browser.text_field(id: 'signup_determine_email').send_keys("hvora22@googlemail.com\n")
	browser.button(id: 'login-signin').click
	browser.text_field(id: 'login-passwd').send_keys("harnish123\n")
	sleep(5)
	browser.wait()
end

it "should post a text post okay" do
	browser.i(class: 'icon_post_text').click
	browser.div(class: 'editor-plaintext').send_keys("test title")
	browser.div(class: 'editor editor-richtext').send_keys("test text")
	browser.button(class: 'button-area create_post_button').click
	sleep(5)
	browser.goto url('/blog/sdet-man')
	expect()

	
end






	
end