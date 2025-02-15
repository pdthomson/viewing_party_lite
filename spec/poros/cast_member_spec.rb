require 'rails_helper'

RSpec.describe CastMember do

  it "exists and has attributes" do
    data =
      {
  "id": 550,
  "cast": [
    {
      "adult": false,
      "gender": 2,
      "id": 819,
      "known_for_department": "Acting",
      "name": "Edward Norton",
      "original_name": "Edward Norton",
      "popularity": 7.861,
      "profile_path": "/5XBzD5WuTyVQZeS4VI25z2moMeY.jpg",
      "cast_id": 4,
      "character": "The Narrator",
      "credit_id": "52fe4250c3a36847f80149f3",
      "order": 0
    },
    {
      "adult": false,
      "gender": 2,
      "id": 287,
      "known_for_department": "Acting",
      "name": "Brad Pitt",
      "original_name": "Brad Pitt",
      "popularity": 20.431,
      "profile_path": "/cckcYc2v0yh1tc9QjRelptcOBko.jpg",
      "cast_id": 5,
      "character": "Tyler Durden",
      "credit_id": "52fe4250c3a36847f80149f7",
      "order": 1
    }]
}

    cast_members = CastMember.new(data)

    expect(cast_members.name).to eq(data[:name])
    expect(cast_members.character).to eq(data[:character])
  end

end
