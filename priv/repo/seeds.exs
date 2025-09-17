alias Shard.Repo
alias World.{Room, Exit}

Repo.delete_all(Exit)
Repo.delete_all(Room)

r0 = Repo.insert!(%Room{name: "Spawn", slug: "spawn", description: "Start here.", x: 0, y: 0})
r1 = Repo.insert!(%Room{name: "North", slug: "north", description: "Chilly breeze.", x: 0, y: 1})
r2 = Repo.insert!(%Room{name: "East", slug: "east", description: "Sun in your eyes.", x: 1, y: 0})

Repo.insert!(%Exit{dir: "n", from_room_id: r0.id, to_room_id: r1.id})
Repo.insert!(%Exit{dir: "s", from_room_id: r1.id, to_room_id: r0.id})
Repo.insert!(%Exit{dir: "e", from_room_id: r0.id, to_room_id: r2.id})
Repo.insert!(%Exit{dir: "w", from_room_id: r2.id, to_room_id: r0.id})
