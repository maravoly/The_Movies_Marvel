require "application_system_test_case"

class TvShowsTest < ApplicationSystemTestCase
  setup do
    @tv_show = tv_shows(:one)
  end

  test "visiting the index" do
    visit tv_shows_url
    assert_selector "h1", text: "Movies"
  end

  test "creating a Movie" do
    visit tv_shows_url
    click_on "New Movie"

    fill_in "Name", with: @tv_show.name
    fill_in "Rating", with: @tv_show.rating
    fill_in "Release date", with: @tv_show.release_date
    fill_in "Summary", with: @tv_show.summary
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "updating a Movie" do
    visit tv_shows_url
    click_on "Edit", match: :first

    fill_in "Name", with: @tv_show.name
    fill_in "Rating", with: @tv_show.rating
    fill_in "Release date", with: @tv_show.release_date
    fill_in "Summary", with: @tv_show.summary
    click_on "Update Movie"

    assert_text "Tv show was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie" do
    visit tv_shows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tv show was successfully destroyed"
  end
end
