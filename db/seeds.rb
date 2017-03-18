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
Event.create(name: "集合と位相", year: 2017, kind: "春休み数学ゼミ", start_date: '2017-02-08', end_date: '2017-03-29', image: "sets_and_topology.png", id: 4)


EventSchedule.destroy_all

EventSchedule.create(event_id: 1, day: "火曜", start_time: "16:00", end_time: "19:00")
EventSchedule.create(event_id: 2, day: "木，日曜", start_time: "16:00", end_time: "19:00")
EventSchedule.create(event_id: 3, day: "日曜", start_time: "9:00", end_time: "12:00")
EventSchedule.create(event_id: 4, day: "水曜", start_time: "9:00", end_time: "12:00")