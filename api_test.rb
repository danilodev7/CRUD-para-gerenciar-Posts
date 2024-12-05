require 'minitest/autorun'
require 'net/http'
require 'json'

class ApiTest < Minitest::Test
  API_URL = 'http://localhost:3000/posts'

  def test_get_root
    uri = URI('http://localhost:3000')
    response = Net::HTTP.get(uri)
    assert_equal '200', response.code
  end

  def create_post
    uri = URI(API_URL)
    post_data = { post: { title: 'Test Post', content: 'This is a test post', published_at: Time.now } }
    response = Net::HTTP.post(uri, post_data.to_json, "Content-Type" => "application/json")
    puts "Create Post: #{response.code} #{response.message}"
  end

  def update_post(post_id)
    uri = URI("#{API_URL}/#{post_id}")
    post_data = { post: { title: 'Updated Post', content: 'This is an updated post' } }
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Put.new(uri.path, { 'Content-Type' => 'application/json' })
    request.body = post_data.to_json
    response = http.request(request)
    puts "Update Post: #{response.code} #{response.message}"
  end

  def list_posts
    uri = URI(API_URL)
    response = Net::HTTP.get(uri)
    posts = JSON.parse(response)
    puts "List Posts: #{posts}"
  end

  def delete_post(post_id)
    uri = URI("#{API_URL}/#{post_id}")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Delete.new(uri.path)
    response = http.request(request)
    puts "Delete Post: #{response.code} #{response.message}"
  end
end

api_test = ApiTest.new
api_test.create_post
api_test.update_post(1)
api_test.list_posts
api_test.delete_post(1)
