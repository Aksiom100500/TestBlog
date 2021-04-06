# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valid_c = categories(:one)
    @invalid_c = categories(:two)
  end

  test 'should get index' do
    get categories_url
    assert_response :success
  end

  test 'should get new' do
    get new_category_url
    assert_response :success
  end

  test 'should create valid category' do
    assert_difference('Category.count') do
      post categories_url, params: { category: { name: @valid_c.name, content: @valid_c.description } }
    end
    assert_match(/[A-ZА-Я][A-ZА-Яa-zа-я]+\s+[A-ZА-Яa-zа-я]{2,}\s*\.\s*(?!.)/, @valid_c.name, 'valid article name')
    assert_redirected_to category_url(Category.last)
  end

  test 'should not create invalid category' do
    assert_no_difference('Category.count') do
      post categories_url, params: { category: { name: @invalid_c.name, content: @invalid_c.description } }
    end
    assert_no_match(/[A-ZА-Я][A-ZА-Яa-zа-я]+\s+[A-ZА-Яa-zа-я]{2,}\s*\.\s*(?!.)/, @invalid_c.name, 'invalid article name')
  end

  test 'should show category' do
    get category_url(@valid_c)
    assert_response :success
  end

  test 'should get edit' do
    get edit_category_url(@valid_c)
    assert_response :success
  end

  test 'should update valid category' do
    patch category_url(@valid_c), params: { category: { name: @valid_c.name, content: @valid_c.description } }
    assert_redirected_to category_url(@valid_c)
    assert(@response.body.exclude?('error_explanation'), 'category is invalid')
  end

  test 'should not update invalid category' do
    patch category_url(@invalid_c), params: { category: { name: @invalid_c.name, content: @invalid_c.description } }
    assert(@response.body.include?('error_explanation'), 'category is valid')
  end

  test 'should destroy category' do
    assert_difference('Category.count', -1) do
      delete category_url(@valid_c)
    end
    assert_redirected_to categories_url
  end
end
