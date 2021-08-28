# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

labs = ["未定", "引原研(先端電気システム論)", "萩原研(自動制御工学)", "坂本研(システム創成論)", "土居研(複合システム論)", "小林研(生体機能工学)", "雨宮研(超伝導工学)", "和田研(電磁回路工学)", "松尾研(電磁エネルギー工学)",
  "掛谷研(集積機能工学)", "白石誠研(極微電子工学)", "竹内研(応用量子物性)", "木本研(半導体物性工学)", "山田研(電子材料物性工学)", "川上研(光材料物性工学)", "野田研(光量子電子工学)", "杉山研(量子電磁工学)",
  "デゾイサ研(ナノプロセス工学)", "金子研(先進電子材料)",
  "黒橋研(言語メディア)", "西野研(コンピュータビジョン)", "原田研(ディジタル通信)", "山本高研(伝送メディア)", "大木研(知的通信網)", "佐藤研(情報回路方式)", "橋本研(超高速信号処理)", "石井研(論理生命学)", "松田哲研(医用工学)",
  "下田研(エネルギー情報学)", "中村祐研(電磁エネルギー学)", "土井研(エネルギー応用基礎学)", "白石康研(プロセスエネルギー学)",
  "山本衛研(リモートセンシング工学)", "橋口研(地球大気計測)", "小嶋研(宇宙電波工学)", "篠原研(マイクロ波エネルギー伝送)", "大村研(電波科学シミュレーション)", "長崎研(プラズマエネルギー変換)", "南研(高音プラズマ物性)", "松田一研(エネルギー光物性)", "中村裕研(複合メディア)"]
  
50.times do |i|
  User.create(email: Faker::Internet.email, username: "匿名#{i}", password: "123456", password_confirmation: "123456", lab: labs[rand(0..40)], year: rand(2018..2021))
  aa = rand(50)
  a = rand(50)
  b = rand(50)
  c = rand(50)
  d = rand(50)
  f = rand(50)
  gpa = (4.3*aa+4*a+3*b+2*c+1*d)/(aa+a+b+c+d+f)
  Grade.create(AA: aa, A: a, B: b, C: c, D: d, F: f, user_id: i, GPA: gpa.round(2))

end
