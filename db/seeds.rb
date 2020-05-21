# # ----------destroy all: -----------

# Update.destroy_all
# Project.destroy_all
# User.destroy_all


# # ----------projects (seed prep for many-to-many): -----------

p1 = Project.create!(name:"Circuit Breaker Dashboard with Pivotal")
p2 = Project.create!(name:"Open Tracing with Scala")
p3 = Project.create!(name:"Timing CircleCI Commands")
p4 = Project.create!(name:"Terraforming Monitors")
p5 = Project.create!(name:"Monitoring the Kubernetes Control Plane")
p6 = Project.create!(name:"Collaboration with Tech Ladies")
p7 = Project.create!(name:"Intercom")


# # ----------users with projects seed: -----------


User.create!("username":"kfazakerley0","password_digest":"a1cfc30d264a1a22be0688ff78b54a283ca6be1f48199ad9c8b5fa2781603dde","avatar":"https://randomuser.me/api/portraits/women/50.jpg","first_name":"Keenan","last_name":"Fazakerley","email":"Keenan.Fazakerley@datadoghq.com","title":"HR Generalist","team":"Human Resources","city":"Melbourne","love_datadog":"Maximum borkdrive super chub you are doing me the shock long bois shoober blop pupperino.","weekend":"Waggy wags doing me a frighten woofer very taste wow.","top_skills":"Making the client happy","gender":"gender neutral","pronouns":"they/them","projects":[p4,p3,p1],"status":true)
User.create!("username":"imucillo1","password_digest":"8d0ac517f4b20bdc4fe54141b5ece29b455ac456e45b5acab910722ab0fd6239","avatar":"https://randomuser.me/api/portraits/men/39.jpg","first_name":"Ibby","last_name":"Mucillo","email":"Ibby.Mucillo@datadoghq.com","title":"HR Generalist","team":"Human Resources","city":"San Francisco","love_datadog":"heckin.","weekend":"heckin.","top_skills":"Product magic","gender":"male","pronouns":"he/him","projects":[p6],"status":false)
User.create!("username":"nkopec2","password_digest":"3a5e16dd2a8fa6cb1e86345b911bfc73d495544e34e89cea20670ef62b4e95e0","avatar":"https://avatars.githubusercontent.com/u/2860499?s=200","first_name":"Nat","last_name":"Kopec","email":"Nat.Kopec@datadoghq.com","title":"Engineer","team":"Engineering","city":"Stockholm","love_datadog":"Maximum borkdrive super chub you are doing me the shock long bois shoober blop pupperino.","weekend":"Very hand that feed shibe yapper much ruin diet. Yapper noodle horse ruff tungg","top_skills":"MVC","gender":"female","pronouns":"she/her","projects":[p5],"status":true)
User.create!("username":"fbattersby3","password_digest":"1f70a2b8973983dce8645162b21fb18e96aa2cb5537fb127e91a17b5e584026a","avatar":"https://avatars.githubusercontent.com/u/577978?s=200","first_name":"Frants","last_name":"Battersby","email":"Frants.Battersby@datadoghq.com","title":"HR Generalist","team":"Human Resources","city":"Sydney","love_datadog":"Waggy wags doing me a frighten woofer very taste wow.","weekend":"Very hand that feed shibe yapper much ruin diet. Yapper noodle horse ruff tungg","top_skills":"Making the client happy","gender":"male","pronouns":"he/him","projects":[p7,p2],"status":true)
User.create!("username":"nkibbey4","password_digest":"7a680ed43cda27cfe2df4031f3aeebf31aa83136b20d4d89f0202651dfaf4149","avatar":"https://randomuser.me/api/portraits/men/23.jpg","first_name":"Nicky","last_name":"Kibbey","email":"Nicky.Kibbey@datadoghq.com","title":"HR Director","team":"Human Resources","city":"Chicago","love_datadog":"Maximum borkdrive super chub you are doing me the shock long bois shoober blop pupperino.","weekend":"Maximum borkdrive super chub you are doing me the shock long bois shoober blop pupperino.","top_skills":"Product magic","gender":"male","pronouns":"he/him","projects":[p6,p2],"status":false)
User.create!("username":"epether5","password_digest":"50c3b6d4d1e7519dad1ac03d357425dcd31e6fdb0d8dc0496142ca85b9e77df1","avatar":"https://avatars.githubusercontent.com/u/15220759?s=200","first_name":"Elisa","last_name":"Pether","email":"Elisa.Pether@datadoghq.com","title":"UX Designer","team":"Design","city":"Amsterdam","love_datadog":"Doggo ipsum such treat big ol doge yapper. Tungg you are doin me a concern.","weekend":"Very hand that feed shibe yapper much ruin diet. Yapper noodle horse ruff tungg","top_skills":"Creating Personas","gender":"female","pronouns":"she/her","projects":[p2,p7],"status":true)
User.create!("username":"dtales6","password_digest":"e943bbd77d291553d27d384ec37f8ba9098c087d49798a8de48bea3321442ef4","avatar":"https://avatars.githubusercontent.com/u/1712393?s=200","first_name":"Danie","last_name":"Tales","email":"Danie.Tales@datadoghq.com","title":"HR Generalist","team":"Human Resources","city":"Sydney","love_datadog":"Maximum borkdrive super chub you are doing me the shock long bois shoober blop pupperino.","weekend":"Snoot very hand that feed shibe snoot most angery pupper I have ever seen boof pupper very taste wow","top_skills":"Python","gender":"female","pronouns":"she/her","projects":[p3,p5,p7],"status":false)
User.create!("username":"aseniour7","password_digest":"323c2ab30f764d3fd35d3804cc8aa687ee64a084a9e27384188d5099aef5bc93","avatar":"https://randomuser.me/api/portraits/women/9.jpg","first_name":"Alberik","last_name":"Seniour","email":"Alberik.Seniour@datadoghq.com","title":"Product Manager","team":"Product","city":"Singapore","love_datadog":"Very hand that feed shibe yapper much ruin diet. Yapper noodle horse ruff tungg","weekend":"Doggo ipsum such treat big ol doge yapper. Tungg you are doin me a concern.","top_skills":"DevOps","gender":"male","pronouns":"he/him","projects":[p7,p4],"status":false)
User.create!("username":"apruce8","password_digest":"4baa6d39b8a658c34bd556d310e68e0a6280019661d1ba98cb7db9b128e40400","avatar":"https://avatars.githubusercontent.com/u/1712393?s=200","first_name":"Aleda","last_name":"Pruce","email":"Aleda.Pruce@datadoghq.com","title":"UX Designer","team":"Design","city":"Portland","love_datadog":"Snoot very hand that feed shibe snoot most angery pupper I have ever seen boof pupper very taste wow","weekend":"Ruff tungg heckin I am bekom fat extremely cuuuuuute.  Such treat fluffer.","top_skills":"Product magic","gender":"female","pronouns":"she/her","projects":[p2,p5,p6],"status":true)
User.create!("username":"kclears9","password_digest":"38502bd7a088ade7b853fdc4146da0e88cf6991393dc2a1038d8854f801912bb","avatar":"https://randomuser.me/api/portraits/women/9.jpg","first_name":"Kevon","last_name":"Clears","email":"Kevon.Clears@datadoghq.com","title":"Project Lead","team":"Engineering","city":"Seoul","love_datadog":"Snoot very hand that feed shibe snoot most angery pupper I have ever seen boof pupper very taste wow","weekend":"Waggy wags doing me a frighten woofer very taste wow.","top_skills":"UX Design","gender":"gender neutral","pronouns":"they/them","projects":[p1],"status":true)

p "#{User.count} users with projects were created"

# ----------updates seed: -----------

updates= [{"content":"Just wrapping up the latest round of Usability Testing.","user_id":9},
{"content":"Just had a successful check in meeting with our client. I look forward to updating everyone at our standup tomorrow.","user_id":1},
{"content":"Just wrapping up the latest round of Usability Testing.","user_id":8},
{"content":"I love my teeeeeeam.","user_id":1},
{"content":"Just wrapping up the latest round of Usability Testing.","user_id":4},
{"content":"Just wrapping up the latest round of Usability Testing.","user_id":2},
{"content":"I love my teeeeeeam.","user_id":4},
{"content":"Just wrapping up the latest round of Usability Testing.","user_id":6},
{"content":"Just had a successful check in meeting with our client. I look forward to updating everyone at our standup tomorrow.","user_id":6},
{"content":"Just wrapping up the latest round of Usability Testing.","user_id":7}]

updates.each do |update|
  Update.create! update
end
p "#{Update.count} updates were created"
