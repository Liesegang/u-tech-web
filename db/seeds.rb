# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all

Event.create(name: "Rails Code Reading", year: 2017, kind: "春休み情報ゼミ", start_date: '2017-02-07', end_date: '2017-03-28', image: "rails_code_reading.png", id: 1)
Event.create(name: "機械学習(Deep Learning)勉強会", year: 2017, kind: "春休み情報ゼミ", start_date: '2017-02-02', end_date: '2017-03-30', image: "deep_learning.png", id: 2)
Event.create(name: "線形代数", year: 2017, kind: "春休み数学ゼミ", start_date: '2017-02-05', end_date: '2017-03-26', image: "linear_algebra.png", id: 3)
Event.create(name: "集合と位相", year: 2017, kind: "春休み数学ゼミ", start_date: '2017-02-08', end_date: '2017-03-29', image: "sets_and_topology.jpg", id: 4)
Event.create(name: "数理論理学", year: 2017, kind: "春休み数学ゼミ", start_date: '2017-02-17', end_date: '2017-03-31', image: "theory.jpg", id: 5)


EventSchedule.destroy_all

EventSchedule.create(event_id: 1, day: "火曜", start_time: "16:00", end_time: "19:00")
EventSchedule.create(event_id: 2, day: "木，日曜", start_time: "16:00", end_time: "19:00")
EventSchedule.create(event_id: 3, day: "日曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 4, day: "水曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 5, day: "金曜", start_time: "9:00", end_time: "12:00")


EventShortDesc.destroy_all

EventShortDesc.create(event_id: 1, desc: "Rubyのプロが書いたコードを読んで，良いコードの書き方を学ぼう！題材にはRuby on RailsのActive Modelとそれに関わるコードを使用します。毎回担当者を決めて，Railsのコードを輪読していきます．")
EventShortDesc.create(event_id: 2, desc: "前半は機械学習とDeep Learningの基礎理論について学習し，後半は自然言語処理を用いた簡単なアプリケーションを製作します．")
EventShortDesc.create(event_id: 3, desc: "「線形代数の世界(抽象数学への入り口)」を読み進めていく自主ゼミです．内容は線形写像や線形空間からテンソル積，群，位相空間などです．")
EventShortDesc.create(event_id: 4, desc: "「集合と位相」を読み進めていく自主ゼミです．内容はなどです．")
EventShortDesc.create(event_id: 5, desc: "「数理論理学」を読み進めていく自主ゼミです．内容はなどです．")