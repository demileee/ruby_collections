
data = {
  rooms: [
    { id: 1, room_number: "201", capacity: 50},
    { id: 2, room_number: "301", capacity: 200 },
    { id: 3, room_number: "1B", capacity: 100},
  ],
  events: [
    { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
    { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
    { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
    { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
  ]
}


#1 retrieve capacity of room 201 and store in variable
#2 find all events in rm201. iterate through em and print ok if number of planned attendees will fit in room

room = data[:rooms].find { |room| room[:room_number] == "201" }
puts room[:capacity]

# Find all the events taking place in room 201. Iterate through them and print "ok" if the number of planned attendees will fit in the room.

puts data[:events].find { |event| event[:room_id] == room[:id] }
