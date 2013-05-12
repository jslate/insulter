one = Insult.create(name: 'Joe', adjective: 'putrid', noun: 'egg head', smell_like: 'flounder')
two = Insult.create(name: 'Jane', adjective: 'revolting', noun: 'twit', smell_like: 'bilge water')

Thumb.create(insult_id: one.id, up: false)
Thumb.create(insult_id: one.id, up: false)
Thumb.create(insult_id: one.id, up: true)

Thumb.create(insult_id: two.id, up: true)
Thumb.create(insult_id: two.id, up: true)
Thumb.create(insult_id: two.id, up: true)
