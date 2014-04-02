User.create!([
  {email: "rickymm3@gmail.com", encrypted_password: "$2a$10$2Q1TbR.to2tBpWGNNvQIP.TwmvZs20B92JEEbSNv4e5KXgkYXza2W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-04-01 23:15:48", last_sign_in_at: "2014-03-31 17:45:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Element.create!([
  {name: "fire"},
  {name: "water"},
  {name: "light"},
  {name: "dark"},
  {name: "thunder"},
  {name: "earth"},
  {name: "multi"}
])
Profile.create!([
  {username: "rickymm3", description: nil, user_id: 1}
])
Unit.create!([
  {name: "Fencer Vargas", description: "A swordsman from the ruined Agni Empire, he later became one of the Six Heroes. Proud of his late father, a Knight in the Order of Agni, he trained in the long sword, becoming a formidable knight. Although he is well-known for his countless victories over other warriors, he still considers himself inexperienced and continues to train with great zeal.", no: 1, element_id: 1, rarity_id: 2, base_hp: nil, base_atk: nil, base_def: nil, base_rec: nil, ls_id: nil, bb_id: nil, numhits: 3, slug: "fencer-vargas", realname: nil},
  {name: "Scythe Alice", description: "", no: 170, element_id: 4, rarity_id: 4, base_hp: nil, base_atk: nil, base_def: nil, base_rec: nil, ls_id: nil, bb_id: nil, numhits: nil, slug: "scythe-alice", realname: nil}
])
