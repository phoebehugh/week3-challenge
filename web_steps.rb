# Given
# puts "===" * 20
# puts Capybara.session_name,inspect
# in_browser(:chrome) do
# puts "---" * 20
# puts Capybara.session_name.inspect
# visit '/'
# end

# puts "+++" * 20
# puts Capybara.session_name.inspect


Make the game player vs player

def in_browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end


Given(/^I am on the homepage$/) do
  puts Capybara.session_name.inspect
  in_browser(:chrome) do
    visit '/'
end


When (/^I register$/) do
  in_browser(:chrome) do
  fill_in 'player_name', with: 'Phoebe'
  click_on 'Register'
  save_and_open_page
end


Given (/^Someone else registers$/) do
  in_browser(:safari) do
    visit '/'
    fill_in 'player_name', with: 'Henry'
    click_on 'Register'
end


Then (/^Something should happen$/) do
  in_browser(:chrome) do
    expect(page).to have_content 'Phoebe'
  end

   in_browser(:safari) do
    expect(page).to have_content 'Henry'
  end
end
