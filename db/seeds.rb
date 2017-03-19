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
Event.create(name: "線形代数", year: 2017, kind: "春休み数学ゼミ", start_date: '2017-02-05', end_date: '2017-03-26', image: "linear_algebra.jpg", id: 3)
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


EventLongDesc.destroy_all

EventLongDesc.create(event_id: 1, desc: "Rubyに関する理解を深め，Rubyのプログラミング技術を向上することを目的として，優秀なプログラマが書いたソースコードを読みます．題材はRails5のActiveModelとActiveSupportの一部です．参加者はRailsの使用経験があり，「メタプログラミングRuby」を理解できるレベルの人たちとなっています．")
EventLongDesc.create(event_id: 2, desc: "機械学習とDeep Learningについて学ぶことを目的とした自主ゼミです．前半はDeep Learningや自然言語処理の理論を学び，後半はTensorFlowを用いた自然言語処理や強化学習などを用いたアプリケーションを製作します．")
EventLongDesc.create(event_id: 3, desc: "物理や情報分野などで幅広く使われている線形代数について理解を深めることを目的としたゼミです．教科書は「線形代数の世界(抽象数学への入り口)」を用います．参加者は大学一年程度の線形代数と微積分を学んでいる人たちです．")
EventLongDesc.create(event_id: 4, desc: "物理や情報分野などで幅広く使われている集合と位相について理解を深めることを目的としたゼミです．教科書は「集合と位相」を用います．参加者は大学一年程度の線形代数と微積分を学んでいる人たちです．")
EventLongDesc.create(event_id: 5, desc: "物理や情報分野などで幅広く使われている数理論理学について理解を深めることを目的としたゼミです．教科書は「数理論理学」を用います．参加者は大学一年程度の線形代数と微積分を学んでいる人たちです．")


EventTextbook.destroy_all

EventTextbook.create(event_id: 1, title: "メタプログラミングRuby", url: "https://www.oreilly.co.jp/books/9784873117430/")


EventDatetime.destroy_all

EventDatetime.create(event_id: 1, start_time: "2017-02-07 16:00", end_time: "2017-02-07 19:00", title: "ActiveModelとActiveSupportの概観．AutoLoadと	AttributeAssignment")
EventDatetime.create(event_id: 1, start_time: "2017-02-14 16:00", end_time: "2017-02-14 19:00", title: "AttributeMethods")
EventDatetime.create(event_id: 1, start_time: "2017-02-21 16:00", end_time: "2017-02-21 19:00", title: "DecendantsTracker,Callbacks")
EventDatetime.create(event_id: 1, start_time: "2017-02-28 16:00", end_time: "2017-02-28 19:00", title: "Conversion,HashWithIndifferentAccess,Dirty")
EventDatetime.create(event_id: 1, start_time: "2017-03-07 16:00", end_time: "2017-03-07 19:00", title: "Errors,Deprecation,ForbiddenAttributesProtection,I18n")
