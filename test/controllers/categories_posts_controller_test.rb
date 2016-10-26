require 'test_helper'

class CategoriesPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_post = categories_posts(:one)
  end

  test "should get index" do
    get categories_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_post_url
    assert_response :success
  end

  test "should create categories_post" do
    assert_difference('CategoriesPost.count') do
      post categories_posts_url, params: { categories_post: { category_id: @categories_post.category_id, post_id: @categories_post.post_id } }
    end

    assert_redirected_to categories_post_url(CategoriesPost.last)
  end

  test "should show categories_post" do
    get categories_post_url(@categories_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_post_url(@categories_post)
    assert_response :success
  end

  test "should update categories_post" do
    patch categories_post_url(@categories_post), params: { categories_post: { category_id: @categories_post.category_id, post_id: @categories_post.post_id } }
    assert_redirected_to categories_post_url(@categories_post)
  end

  test "should destroy categories_post" do
    assert_difference('CategoriesPost.count', -1) do
      delete categories_post_url(@categories_post)
    end

    assert_redirected_to categories_posts_url
  end
end
