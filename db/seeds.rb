
carlos = User.create(name: 'Carlos')
freida = User.create(name: 'Frieda')
julian = User.create(name: 'Julian')


eventa = Event.create(name: "bash", date:'2001-01-10' , location: 'lagos', user_id: carlos.id)
eventb = Event.create(name: "bashsecond", date:'2001-01-10' , location:'lagos', user_id: carlos.id)
eventc = Event.create(name: "bashthird", date:'2001-01-10', location:'lagos', user_id: carlos.id)


Invitation.create(sender_id: carlos.id, reciever_id: freida.id, event_id: eventa.id, attend: false)
Invitation.create(sender_id: carlos.id, reciever_id: freida.id, event_id: eventb.id, attend: false)
Invitation.create(sender_id: carlos.id, reciever_id: freida.id, event_id: eventc.id, attend: true)

Invitation.create(sender_id: carlos.id, reciever_id: julian.id, event_id: eventa.id, attend: false)
Invitation.create(sender_id: carlos.id, reciever_id: julian.id, event_id: eventb.id, attend: false)
Invitation.create(sender_id: carlos.id, reciever_id: julian.id, event_id: eventc.id, attend: false)
