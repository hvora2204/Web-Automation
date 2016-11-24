
def url(path)
  'https://www.tumblr.com' + path
end

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end


  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end




=begin



def logged_in?
  @browser.body.attribute_value('class').include? 'logged_in'
end

def log_out
  @browser.goto url('/logout') if logged_in?
end

def user_logins
{
  danny: {email: 'danny@dany.co.uk', password: 'jvnjnvvw'}
  harnish: {email: 'harnish@harnish.co.uk', password: 'ekjfkejfe'}
}
end

def login_as(sym)
  logout url
  @browser.goto url('/login')
  @browser.element(id: 'signup_determine_email').send_keys user_logins
end

=end