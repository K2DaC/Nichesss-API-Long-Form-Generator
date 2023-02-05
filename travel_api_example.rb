require 'net/http'
require 'json'

API_URL_DOCUMENT_BY_TEMPLATE = "https://nichesss.com/api/documents/push-to-queue"

API_KEY = "CHANGE-ME-TO-YOIR-API-KEY" # Change to your API KEY (you find it here https://nichesss.com/home/api)
LANGUAGE = "deepl_EN-US" # Change to your language
TEMPLATE_ID = "8HzgIcv6p" # Change to your Template ID (Last part of the URL of your tempalte, e.g. https://nichesss.com/home/documents/8HzgIcv6p)

OUTLINE_1 = "Overview of ${BLOG_POST_TOPIC}'s top attractions."
OUTLINE_2 = "Where to eat in ${BLOG_POST_TOPIC} as a tourist."
OUTLINE_3 = "Exciting outdoor activities to enjoy all year round in ${BLOG_POST_TOPIC}."
OUTLINE_4 = "Best nightlife destinations in ${BLOG_POST_TOPIC}."
OUTLINE_5 = "Where to stay in ${BLOG_POST_TOPIC} as a tourist."
OUTLINE_6 = "Watch outs and things to avoid in ${BLOG_POST_TOPIC}."

TITLE = "${BLOG_POST_TOPIC} as a travel destination for your holidays."
ABOUT = "Short city review for ${BLOG_POST_TOPIC}"

BLOG_POST_TOPICS = ["Portland", "Orlando"]

def replacePlaceholder(input, newValue)
  stringCopy = input.clone
  stringCopy["${BLOG_POST_TOPIC}"] = newValue
  return stringCopy
end

uri = URI(API_URL_DOCUMENT_BY_TEMPLATE)
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
request = Net::HTTP::Post.new(uri.request_uri)
request['Content-type'] = 'application/json'
request['Authorization'] = 'Bearer ' + API_KEY

BLOG_POST_TOPICS.each { |topic|
  #puts topic
  request.body = {"template_id":TEMPLATE_ID,
    "title":replacePlaceholder(TITLE, topic),
    "about":replacePlaceholder(ABOUT, topic),
    "TOPIC":topic,
    "OUTLINE_ITEM_1":replacePlaceholder(OUTLINE_1, topic),
    "OUTLINE_ITEM_2":replacePlaceholder(OUTLINE_2, topic),
    "OUTLINE_ITEM_3":replacePlaceholder(OUTLINE_3, topic),
    "OUTLINE_ITEM_4":replacePlaceholder(OUTLINE_4, topic),
    "OUTLINE_ITEM_5":replacePlaceholder(OUTLINE_5, topic),
    "OUTLINE_ITEM_6":replacePlaceholder(OUTLINE_6, topic),
    "webhook_url":"https://a-cool-webhook.com",
    "language":{"id":LANGUAGE,
    "formality":"more"}
  }.to_json

  response = http.request(request)
  puts JSON.parse(response.body)
}
