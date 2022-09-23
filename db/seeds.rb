# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'kaneda1@eem.jp',
   password: 'kkkkkk'
)

Admin.create!(
   email: 'kaneda@eem.jp1',
   password: 'kkkkkk'
)


EndUser.create!(
  email: 'kaneda@eem.jp2',
  password: 'kkkkkk',
  name: "佐助",
  express: "できる仕事を増やしてほしい",
  disorder: "統合失調症",
  age: "30代",
  sex: "男性",
  prefecture: "奈良県",
  want: "仕事を相談できる場所"
)
EndUser.create!(
  email: 'kaneda@eem.jp3',
  password: 'kkkkkk',
  name: "あみん",
  express: "周りの人の配慮がもっとほしい",
  disorder: "発達障害",
  age: "20代",
  sex: "女性",
  prefecture: "東京都",
  want: "学校や社会で、障害者と健常者を分けて考えることをやめてほしい"
)
EndUser.create!(
  email: 'kaneda@eem.jp4',
  password: 'kkkkkk',
  name: "daisuke",
  express:"休みながらでも働ける職場を増やしてほしい",
  disorder: "うつ病",
  age: "50代",
  sex: "男性",
  prefecture: "埼玉県",
  want: "給料を減らしてでもいいので、障害に理解ある職場や社会の実現"
)
EndUser.create!(
  email: 'kaneda@eem.jp5',
  password: 'kkkkkk',
  name: "とっとちゃん",
  express: "障害での差別がないようにしてほしい",
  disorder: "双極性障害",
  age: "40代",
  sex: "女性",
  prefecture: "高知県",
  want: "障害をカミングアウトしても、受け入れられるような世界にいたい"
)
EndUser.create!(
  email: 'kaneda@eem.jp6',
  password: 'kkkkkk',
  name: "さかな",
  express:"もっと働きたい",
  disorder: "発達障害",
  age: "20代",
  sex: "男性",
  prefecture: "神奈川県",
  want: "障害をもっても働ける職場や企業を増やしてほしい"
)
EndUser.create!(
  email: 'kaneda@eem.jp7',
  password: 'kkkkkk',
  name: "みれい",
  express:"社会の理解をもっと増やす",
  disorder: "統合失調症",
  age: "20代",
  sex: "女性",
  prefecture: "大阪府",
  want: "障害のせいなのか、友人ができません。できてもなかなか長続きしないことが多いです。薬の量も増えてきて、時々何をしているのかわからないことがあります。"
)
EndUser.create!(
  email: 'kaneda@eem.jp8',
  password: 'kkkkkk',
  name: "パンダ",
  express:"将来が不安です。",
  disorder: "適応障害",
  age: "30代",
  sex: "男性",
  prefecture: "兵庫県",
  want: "将来について安心できる要素をたくさん持っている社会の実現"
)
EndUser.create!(
  email: 'kaneda@eem.jp9',
  password: 'kkkkkk',
  name: "はな",
  express:"どう生きていこうか迷っています",
  disorder: "HSP",
  age: "40代",
  sex: "女性",
  prefecture: "千葉県",
  want: "大きな声で無理やりコントロールしようとする人がいない環境"
)
EndUser.create!(
  email: 'kaneda@eem.jp10',
  password: 'kkkkkk',
  name: "大吉",
  express:"自信をもって社会で働きたい",
  disorder: "うつ病",
  age: "30代",
  sex: "男性",
  prefecture: "北海道",
  want: "休職しても元に戻れる職場や企業"
)


