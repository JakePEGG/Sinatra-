feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature 'See opponents health' do
  scenario 'see health' do
    sign_in_and_play
    expect(page).to have_content 'Mittens 100 HP'
  end
end

feature 'attacks enemy' do
  scenario 'iterates health down from original hp' do
    sign_in_and_play
    click_button 'attack' 
    expect(page).to have_content 'Mittens 90 HP'
  end
end
