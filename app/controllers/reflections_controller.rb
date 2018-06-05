class ReflectionsController < ApplicationController

def index
  # logger.debug('test')
  # client = Google::APIClient.new　#APIのインスタンス作成
  # client.authorization.access_token = ENV['ACCESS_TOKEN']　#トークンを入れる（もしかしたら不要かも）
  # client.authorization.client_id = ENV['CLIENT_ID']　# Google Developerで取得したclient id を入れる。.envに記載
  # client.authorization.client_secret = ENV['CLIENT_SECRET'] #Google Developerで取得したclient secret を入れる。.envに記載
  # client.authorization.refresh_token = ENV['REFRESH_TOKEN'] #リフレッシュトークンを入れる
  # service = client.discovered_api('calendar', 'v3') #APIの種類を指定(google calendarAPIを指定）

  # @responses = client.execute(
  #   :api_method => service.events.list,
  #   :parameters => {'calendarId' => 'primary',
  #     'timeMin'=> (Time.now - 10.months).iso8601,
  #     'timeMax'=> (Time.now + 1.months).iso8601,
  #     'maxResults' => 2500},
  #   :headers => {'Content-Type' => 'application/json'})
  # #インスタンスを実行する。executeの引数には色々指定でき、取得期間などが指定できる。
  # 　@responseにAPIからのレスポンスがはいる。

  #   events = []
  #   @responses.data.items.each do |item|
  #     events << item
  #   end
#レスポンスからイベントのデータのみを取ってきてリストに入れる。
end
#   # Initialize the client & Google+ API
#   # require 'google/api_client'
#   # require "yaml"
#   # require "time"

#   # Initialize OAuth 2.0 client
#   # authorization
#   # oauth_yaml = YAML.load_file('.google-api.yaml')
#   client = Google::APIClient.new(:application_name => 'refrection-diary')
#   client.authorization.client_id = ENV['CLIENT_ID']
#   client.authorization.client_secret = ENV['CLIENT_SECRET']
#   client.authorization.scope = ENV['SCOPE']
#   client.authorization.refresh_token = ENV['REFRESH_TOKEN']
#   client.authorization.access_token = ENV['ACCESS_TOKEN']

#   cal = client.discovered_api('calendar', 'v3')

#   # イベント取得月の確認
#   printf("2018")
#   year = gets.strip.to_i
#   printf("6")
#   month = gets.strip.to_i

#   # 時間を格納
#   time_min = Time.utc(year, month, 1, 0).iso8601
#   time_max = Time.utc(year, month, 31, 0).iso8601

#   # イベントの取得
#   params = {'calendarId' => 'primary',
#             'orderBy' => 'startTime',
#             'timeMax' => time_max,
#             'timeMin' => time_min,
#             'singleEvents' => 'True'}

#   result = client.execute(:api_method => cal.events.list,
#                           :parameters => params)

#   # イベントの格納
#   events = []
#   result.data.items.each do |item|
#           events << item
#   end

#   # 出力
#   events.each do |event|
#       printf("%s,%s\n",event.start.date,event.summary)
#   end
# end
end
