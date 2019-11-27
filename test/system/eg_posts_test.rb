require "application_system_test_case"

class EgPostsTest < ApplicationSystemTestCase
  setup do
    @eg_post = eg_posts(:one)
  end

  test "visiting the index" do
    visit eg_posts_url
    assert_selector "h1", text: "Eg Posts"
  end

  test "creating a Eg post" do
    visit eg_posts_url
    click_on "New Eg Post"

    fill_in "Headline", with: @eg_post.headline
    fill_in "Incipit", with: @eg_post.incipit
    fill_in "Meta description", with: @eg_post.meta_description
    fill_in "Meta title", with: @eg_post.meta_title
    fill_in "User", with: @eg_post.user_id
    click_on "Create Eg post"

    assert_text "Eg post was successfully created"
    click_on "Back"
  end

  test "updating a Eg post" do
    visit eg_posts_url
    click_on "Edit", match: :first

    fill_in "Headline", with: @eg_post.headline
    fill_in "Incipit", with: @eg_post.incipit
    fill_in "Meta description", with: @eg_post.meta_description
    fill_in "Meta title", with: @eg_post.meta_title
    fill_in "User", with: @eg_post.user_id
    click_on "Update Eg post"

    assert_text "Eg post was successfully updated"
    click_on "Back"
  end

  test "destroying a Eg post" do
    visit eg_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eg post was successfully destroyed"
  end
end
