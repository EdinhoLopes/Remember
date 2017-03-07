namespace :util do
  desc "Popula a Tabela Amigos com 10 nomes"
  task setup_friend: :environment do
  	if Rails.env.development?
	  	10.times do |i|
		friend_name = Faker::Name.name
		friend_address = Faker::Address.street_address
		friend_email = Faker::Internet.email
		friend_phone = Faker::PhoneNumber.cell_phone
		friend = "#{friend_name}"
		puts "Cadastrando o #{friend}"
		Friend.create(name: friend_name, address: friend_address, email: friend_email, phone: friend_phone)
     end
    else
    	puts "Você não tem permissão para rodar esta tarefa em ambiente de Produção!!! "
    end
  end

  desc "Popula a Tabela Amigos com 15 nome"
  task setup_friend_15: :environment do
  	15.times do |i|
	friend_name = Faker::Name.name
	friend_address = Faker::Address.street_address
	friend_email = Faker::Internet.email
	friend_phone = Faker::PhoneNumber.cell_phone
	friend = "#{friend_name}"
	puts "Cadastrando o #{friend}"
	Friend.create(name: friend_name, address: friend_address, email: friend_email, phone: friend_phone)
    end
  end

end
