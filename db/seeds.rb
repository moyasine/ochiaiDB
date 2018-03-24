names = %w(レコーダー イヤホン マイク Webカメラ 洗濯機 冷蔵庫 エアコン ノートPC 40型TV デジタルカメラ)

names.each do |name|
  random = [*1..10].sample  # 1から10のランダム値を取得
  Presentation.create! name: name, body: random * 1000, upload_on: random.day.ago
end
