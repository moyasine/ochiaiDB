class Presentation < ActiveRecord::Base

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      unless row["body"] == ""
        # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
        presentation = find_by(id: row["id"]) || new
        # CSVからデータを取得し、設定する
        presentation.attributes = row.to_hash.slice(*updatable_attributes)
        # 保存する
        presentation.attributes = {upload_on: Date.today.strftime('%Y-%m-%d')}
        presentation.save!
      end


    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["name", "body", "upload_on"]
  end
end
