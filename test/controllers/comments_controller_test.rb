# frozen_string_literal: true

require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valid_comment = comments(:one)
    @invalid_comment = comments(:two)
    @category = categories(:one)
    @article = articles(:one)
  end

  test 'should create valid comment for category' do
    assert_difference('Comment.count') do
      post category_comments_url(@category),
           params: { comment: { author: @valid_comment.author, content: @valid_comment.content } }, xhr: true
    end
    assert(@response.body.include?('.comments'), 'validation success')
  end

  test 'should not create invalid comment for category' do
    assert_no_difference('Comment.count') do
      post category_comments_url(@category),
           params: { comment: { author: @invalid_comment.author, content: @invalid_comment.content } }, xhr: true
    end
    assert(@response.body.include?('#errors'), 'validation failure')
  end

  test 'should create valid comment article' do
    assert_difference('Comment.count') do
      post category_comments_url(@article),
           params: { comment: { author: @valid_comment.author, content: @valid_comment.content } }, xhr: true
    end
    assert(@response.body.include?('.comments'), 'validation success')
  end

  test 'should not create invalid comment article' do
    assert_no_difference('Comment.count') do
      post category_comments_url(@article),
           params: { comment: { author: @invalid_comment.author, content: @invalid_comment.content } }, xhr: true
    end
    assert(@response.body.include?('#errors'), 'validation failure')
  end
end
