describe 'have whatever' do
  it 'should have key' do
    {:id => 1, :name =>'Dave'}.should have_key(:id)
  end

  it 'should get field' do
    {:id => 1, :name =>'Dave'}.should have_key(:dob)
  end

   it {
    team = (1..11).to_a
    team.should have(11).players_on_the_field
    puts team
  }

  it {
    "this String".should have(11).characters
  }

end