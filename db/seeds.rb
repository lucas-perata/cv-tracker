puts "Doorkeeper config"

if Doorkeeper::Application.count.zero? 
    Doorkeeper::Application.create!(name: "Web Client", redirect_uri: "", scopes: "")
    Doorkeeper::Application.create!(name: "iOS Client", redirect_uri: "", scopes: "")
    Doorkeeper::Application.create!(name: "Android Client", redirect_uri: "", scopes: "")
    Doorkeeper::Application.create!(name: "React", redirect_uri: "", scopes: "")
end 

User.create!(email: "admin@mail.com",
password: "password",
role: 1)

puts "User test admin created"