require 'test_helper'

class NewsSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_source = news_sources(:one)
  end

  test "should get index" do
    get news_sources_url, as: :json
    assert_response :success
  end

  test "should create news_source" do
    assert_difference('NewsSource.count') do
      post news_sources_url, params: { news_source: { fire_id: @news_source.fire_id, headline: @news_source.headline, publication: @news_source.publication, url: @news_source.url } }, as: :json
    end

    assert_response 201
  end

  test "should show news_source" do
    get news_source_url(@news_source), as: :json
    assert_response :success
  end

  test "should update news_source" do
    patch news_source_url(@news_source), params: { news_source: { fire_id: @news_source.fire_id, headline: @news_source.headline, publication: @news_source.publication, url: @news_source.url } }, as: :json
    assert_response 200
  end

  test "should destroy news_source" do
    assert_difference('NewsSource.count', -1) do
      delete news_source_url(@news_source), as: :json
    end

    assert_response 204
  end
end
