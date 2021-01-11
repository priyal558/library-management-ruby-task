events = [
  {
    id:2,
    start: "3:30",
    break: 30,
    num_attendees: 14
  },
  {
    id: 3,
    start: "3: 40",
    break: 40,
    num_attendees: 4
  },
  {
    id: 4,
    start: "4: 40",
    break: 10,
    num_attendees: 40
  }
]
return_keys = ['id','start']
return_array = events.select{|key,val|  key.to_s.in? return_keys}