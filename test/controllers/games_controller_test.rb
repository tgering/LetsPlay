require "test_helper"

describe GamesController do
  let(:game) { games :one }

  it "gets index" do
    get games_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_game_url
    value(response).must_be :success?
  end

  it "creates game" do
    expect {
      post games_url, params: { game: { attendee: game.attendee, creator: game.creator, date: game.date, location: game.location, sport: game.sport } }
    }.must_change "Game.count"

    must_redirect_to game_path(Game.last)
  end

  it "shows game" do
    get game_url(game)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_game_url(game)
    value(response).must_be :success?
  end

  it "updates game" do
    patch game_url(game), params: { game: { attendee: game.attendee, creator: game.creator, date: game.date, location: game.location, sport: game.sport } }
    must_redirect_to game_path(game)
  end

  it "destroys game" do
    expect {
      delete game_url(game)
    }.must_change "Game.count", -1

    must_redirect_to games_path
  end
end
