require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valid_a = articles(:one)
    @invalid_a = articles(:two)
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create valid article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: {name: @valid_a.name, content: @valid_a.content, category_id: @valid_a.category.id } }
    end
    assert_match( /[A-ZА-Я][A-ZА-Яa-zа-я]+\s+[A-ZА-Яa-zа-я]{2,}\s*\.\s*(?!.)/, @valid_a.name, 'valid article name' )
    assert_redirected_to article_url(Article.last)
  end

  test "should not create invalid article" do
    assert_no_difference('Article.count') do
      post articles_url, params: { article: {name: @invalid_a.name, content: @invalid_a.content, category_id: @invalid_a.category.id } }
    end
    assert_no_match( /[A-ZА-Я][A-ZА-Яa-zа-я]+\s+[A-ZА-Яa-zа-я]{2,}\s*\.\s*(?!.)/, @invalid_a.name, 'invalid article name' )
  end

  test "should show article" do
    get article_url(@valid_a)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@valid_a)
    assert_response :success
  end

  test "should update valid article" do
    patch article_url(@valid_a), params: { article: { name: @valid_a.name, content: @valid_a.content, category_id: @valid_a.category.id } }
    assert_redirected_to article_url(@valid_a)
    assert( @response.body.exclude?('error_explanation'), "article is invalid" )
  end

  test "should not update invalid article" do
    patch article_url(@invalid_a), params: { article: { name: @invalid_a.name, content: @invalid_a.content, category_id: @invalid_a.category.id } }
    assert( @response.body.include?('error_explanation'), "article is valid" )
  end

  test "should destroy article" do
    assert_difference('Article.count', -1 ) do
      delete article_url(@valid_a)
    end
  end
end
