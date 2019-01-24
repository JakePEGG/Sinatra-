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
