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
Event.create(name: "マスタリングTCP/IP 入門編", year: 2017, kind: "春学期情報ゼミ", start_date: '2017-04-09', end_date: '2017-07-30', image: "tcp_ip.jpg", id: 6)
Event.create(name: "群論", year: 2017, kind: "春学期数学ゼミ", start_date: '2017-04-08', end_date: '2017-07-29', image: "group.jpg", id: 7)
Event.create(name: "The Art of Computer Programming Volume1 Fundamental Algorithms", year: 2017, kind: "春学期情報ゼミ", start_date: '2017-05-07', end_date: '2017-07-30', image: "art_of_cp1.jpg", id: 8)
Event.create(name: "上級量子力学", year: 2017, kind: "春学期物理ゼミ", start_date: '2017-05-07', end_date: '2017-07-30', image: "quantum_mechanics.jpg", id: 9)


EventSchedule.destroy_all

EventSchedule.create(event_id: 1, day: "火曜", start_time: "16:00", end_time: "19:00")
EventSchedule.create(event_id: 2, day: "木，日曜", start_time: "16:00", end_time: "19:00")
EventSchedule.create(event_id: 3, day: "日曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 4, day: "水曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 5, day: "金曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 6, day: "日曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 7, day: "土曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 8, day: "日曜", start_time: "14:00", end_time: "17:00")


EventShortDesc.destroy_all

EventShortDesc.create(event_id: 1, desc: "Rubyのプロが書いたコードを読んで，良いコードの書き方を学ぼう！題材にはRuby on RailsのActive Modelとそれに関わるコードを使用します。毎回担当者を決めて，Railsのコードを輪読していきます．")
EventShortDesc.create(event_id: 2, desc: "前半は機械学習とDeep Learningの基礎理論について学習し，後半は自然言語処理を用いた簡単なアプリケーションを製作します．")
EventShortDesc.create(event_id: 3, desc: "「線形代数の世界(抽象数学への入り口)」を読み進めていく自主ゼミです．内容は線形写像や線形空間からテンソル積，群，位相空間などです．")
EventShortDesc.create(event_id: 4, desc: "「集合と位相」を読み進めていく自主ゼミです．内容は距離空間，位相空間，完備距離空間などをやります．")
EventShortDesc.create(event_id: 5, desc: "「数理論理学」を読み進めていく自主ゼミです．内容は一回命題論理と一階述語論理などです．")
EventShortDesc.create(event_id: 6, desc: "「マスタリングTCP/IP 入門編」を読み進めていく自主ゼミです．内容はネットワーク，TCP/IP，セキュリティーなどです．")
EventShortDesc.create(event_id: 7, desc: "「代数学1 群と環」を読み進めていく自主ゼミです．群論の基礎を学びます．")
EventShortDesc.create(event_id: 8, desc: "「The Art of Computer Programming Volume1 Fundamental Algorithms」を読み進めていく自主ゼミです．コンピューターサイエンスを将来的に専門にしたい人必読の本です．")
EventShortDesc.create(event_id: 9, desc: "このゼミでは物理学において重要な分野である量子論を学習します。具体的には相対論的量子力学、場の量子論を扱います。参加者は初等量子論についての知識を有していることが望まれます。")


EventLongDesc.destroy_all

EventLongDesc.create(event_id: 1, desc: "Rubyに関する理解を深め，Rubyのプログラミング技術を向上することを目的として，優秀なプログラマが書いたソースコードを読みます．題材はRails5のActiveModelとActiveSupportの一部です．参加者はRailsの使用経験があり，「メタプログラミングRuby」を理解できるレベルの人たちとなっています．")
EventLongDesc.create(event_id: 2, desc: "機械学習とDeep Learningについて学ぶことを目的とした自主ゼミです．前半はDeep Learningや自然言語処理の理論を学び，後半はTensorFlowを用いた自然言語処理や強化学習などを用いたアプリケーションを製作します．")
EventLongDesc.create(event_id: 3, desc: "物理や情報分野などで幅広く使われている線形代数について理解を深めることを目的としたゼミです．教科書は「線形代数の世界(抽象数学への入り口)」を用います．参加者は大学一年程度の線形代数と微積分を学んでいる人たちです．")
EventLongDesc.create(event_id: 4, desc: "物理や情報分野などで幅広く使われている集合と位相について理解を深めることを目的としたゼミです．教科書は「集合と位相」を用います．参加者は大学一年程度の線形代数と微積分を学んでいる人たちです．")
EventLongDesc.create(event_id: 5, desc: "物理や情報分野などで幅広く使われている数理論理学について理解を深めることを目的としたゼミです．教科書は「数理論理学」を用います．参加者は大学一年程度の線形代数と微積分を学んでいる人たちです．")
EventLongDesc.create(event_id: 6, desc: "Webを支えているインターネットについて学ぶことを目的とした自主ゼミです．教科書は「マスタリングTCP/IP 入門編」を用います．ある程度Webアプリケーションを製作した経験や，なんらかの基礎知識があると好ましいですが，初学としてでも可能です．")
EventLongDesc.create(event_id: 7, desc: "物理や情報分野などで幅広く使われている群論について理解を深めることを目的としたゼミです．教科書は「代数学1 群と環」を用います．参加者は大学一年程度の線形代数と微積分を学んでいる人たちが多いですが，高校数学までの知識でも参加可能です．")
EventLongDesc.create(event_id: 8, desc: "アルゴリズムについて学ぶ自主ゼミです．教科書は「The Art of Computer Programming Volume1 Fundamental Algorithms」を用います．なんらかのプログラミング言語の使用経験がある人が対象です．")
EventLongDesc.create(event_id: 9, desc: "このゼミでは物理学において重要な分野である量子論を学習します。具体的には相対論的量子力学、場の量子論を扱います。参加者は初等量子論についての知識を有していることが望まれます。")


EventTextbook.destroy_all

EventTextbook.create(event_id: 1, title: "メタプログラミングRuby", url: "https://www.oreilly.co.jp/books/9784873117430/")
EventTextbook.create(event_id: 3, title: "線形代数の世界(抽象数学への入り口)", url: "http://www.utp.or.jp/bd/978-4-13-062957-7.html")
EventTextbook.create(event_id: 4, title: "集合と位相", url: "https://www.shokabo.co.jp/mybooks/ISBN978-4-7853-1401-9.htm")
EventTextbook.create(event_id: 5, title: "数理論理学", url: "http://www.utp.or.jp/bd/978-4-13-062915-7.html")
EventTextbook.create(event_id: 6, title: "マスタリングTCP/IP 入門編", url: "http://shop.ohmsha.co.jp/shopdetail/000000001919/")
EventTextbook.create(event_id: 7, title: "代数学1 群と環", url: "http://www.utp.or.jp/bd/4-13-062951-4.html")
EventTextbook.create(event_id: 8, title: "The Art of Computer Programming Volume1 Fundamental Algorithms", url: "http://www.kadokawa.co.jp/product/312303000000/")
EventTextbook.create(event_id: 7, title: "サクライ上級量子力学〈第1巻〉輻射と粒子", url: "http://planet.maruzen.co.jp/bookdetail.php?pg=16&id=100430151807")


EventDatetime.destroy_all

EventDatetime.create(event_id: 1, start_time: "2017-02-07 16:00", end_time: "2017-02-07 19:00", title: "ActiveModelとActiveSupportの概観．AutoLoadと	AttributeAssignment")
EventDatetime.create(event_id: 1, start_time: "2017-02-14 16:00", end_time: "2017-02-14 19:00", title: "AttributeMethods")
EventDatetime.create(event_id: 1, start_time: "2017-02-21 16:00", end_time: "2017-02-21 19:00", title: "DecendantsTracker,Callbacks")
EventDatetime.create(event_id: 1, start_time: "2017-02-28 16:00", end_time: "2017-02-28 19:00", title: "Conversion,HashWithIndifferentAccess,Dirty")
EventDatetime.create(event_id: 1, start_time: "2017-03-07 16:00", end_time: "2017-03-07 19:00", title: "Errors,Deprecation,ForbiddenAttributesProtection,I18n")

EventDatetime.create(event_id: 2, start_time: "2017-02-02 16:00", end_time: "2017-02-02 19:00", title: "機械学習")
EventDatetime.create(event_id: 2, start_time: "2017-02-05 16:00", end_time: "2017-02-05 19:00", title: "パーセプトロン")
EventDatetime.create(event_id: 2, start_time: "2017-02-09 16:00", end_time: "2017-02-09 19:00", title: "Word2Vec")
EventDatetime.create(event_id: 2, start_time: "2017-02-12 16:00", end_time: "2017-02-12 19:00", title: "TensorFlow")
EventDatetime.create(event_id: 2, start_time: "2017-02-16 16:00", end_time: "2017-02-16 19:00", title: "RNN")
EventDatetime.create(event_id: 2, start_time: "2017-02-19 16:00", end_time: "2017-02-19 19:00", title: "自主製作")
EventDatetime.create(event_id: 2, start_time: "2017-02-23 16:00", end_time: "2017-02-23 19:00", title: "自主製作")
EventDatetime.create(event_id: 2, start_time: "2017-02-26 16:00", end_time: "2017-02-26 19:00", title: "自主製作")
EventDatetime.create(event_id: 2, start_time: "2017-03-02 16:00", end_time: "2017-03-02 19:00", title: "自主製作")
EventDatetime.create(event_id: 2, start_time: "2017-03-05 16:00", end_time: "2017-03-05 19:00", title: "自主製作")
EventDatetime.create(event_id: 2, start_time: "2017-03-09 16:00", end_time: "2017-03-09 19:00", title: "自主製作")
EventDatetime.create(event_id: 2, start_time: "2017-03-12 16:00", end_time: "2017-03-12 19:00", title: "自主製作")
EventDatetime.create(event_id: 2, start_time: "2017-03-16 16:00", end_time: "2017-03-16 19:00", title: "自主製作")

EventDatetime.create(event_id: 3, start_time: "2017-02-05 09:00", end_time: "2017-02-05 12:00", title: "体，線形空間，次元")
EventDatetime.create(event_id: 3, start_time: "2017-02-12 09:00", end_time: "2017-02-12 12:00", title: "線形写像")
EventDatetime.create(event_id: 3, start_time: "2017-02-19 09:00", end_time: "2017-02-19 12:00", title: "自己準同型")
EventDatetime.create(event_id: 3, start_time: "2017-02-26 09:00", end_time: "2017-02-26 12:00", title: "自己準同型")
EventDatetime.create(event_id: 3, start_time: "2017-03-12 09:00", end_time: "2017-03-12 12:00", title: "双対空間")
EventDatetime.create(event_id: 3, start_time: "2017-03-19 09:00", end_time: "2017-03-19 12:00", title: "双線形形式")

EventDatetime.create(event_id: 4, start_time: "2017-02-08 09:00", end_time: "2017-02-08 12:00", title: "集合と写像")
EventDatetime.create(event_id: 4, start_time: "2017-02-15 09:00", end_time: "2017-02-15 12:00", title: "濃度の大小と二項関係")
EventDatetime.create(event_id: 4, start_time: "2017-02-22 09:00", end_time: "2017-02-22 12:00", title: "整列集合と選択公理")
EventDatetime.create(event_id: 4, start_time: "2017-03-01 09:00", end_time: "2017-03-01 12:00", title: "距離空間")
EventDatetime.create(event_id: 4, start_time: "2017-03-08 09:00", end_time: "2017-03-08 12:00", title: "位相空間")
EventDatetime.create(event_id: 4, start_time: "2017-03-15 09:00", end_time: "2017-03-15 12:00", title: "位相空間")
EventDatetime.create(event_id: 4, start_time: "2017-03-22 09:00", end_time: "2017-03-22 12:00", title: "積空間と商空間")

EventDatetime.create(event_id: 5, start_time: "2017-02-17 09:00", end_time: "2017-02-17 12:00", title: "論理学とは何か ，一階命題論理: 統語論と意味論")
EventDatetime.create(event_id: 5, start_time: "2017-02-24 09:00", end_time: "2017-02-24 12:00", title: "二進法とデジタル回路，一階述語論理: 統語論と意味論")
EventDatetime.create(event_id: 5, start_time: "2017-03-03 09:00", end_time: "2017-03-03 12:00", title: "一階述語論理: 統語論と意味論")
EventDatetime.create(event_id: 5, start_time: "2017-03-10 09:00", end_time: "2017-03-10 12:00", title: "一階述語論理: 統語論と意味論")


EventInfo.destroy_all

EventInfo.create(event_id: 1, message: "次回は 3/21() に学生会館で行います", due: "2017-3-21 18:05 +0900")
EventInfo.create(event_id: 7, message: "初回は 4/8(土) 9:00 - 12:00 です", due: "2017-4-08 12:00 +0900")
EventInfo.create(event_id: 9, message: "曜日，時間は未定です", due: "2017-5-10 12:00 +0900")


EventDoc.destroy_all

EventDoc.create(event_id: 1, title: "Git資料", desc: "gitにあげてある資料", url: "https://github.com/Kazuuuuuki/utech-Rails-reading")
EventDoc.create(event_id: 2, title: "Git資料", desc: "gitにあげてある資料", url: "https://github.com/Kazuuuuuki/uTech-TensorFlow")
EventDoc.create(event_id: 2, title: "正誤表", desc: "gitにあげてある資料", url: "https://github.com/Kazuuuuuki/uTech-TensorFlow")
