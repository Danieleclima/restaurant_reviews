# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hash = {"Sushi Samba" => "Only at SUSHISAMBA will you find a unique blend of Japanese, Brazilian and Peruvian culture and cuisine. SUSHISAMBA is born of the energy and spirit of these three distinct cultures; a tri-cultural coalition that took root in the early 20th century when thousands of Japanese emigrants traveled to South America’s fertile soil to cultivate coffee plantations and find their fortune. In bustling cities like Lima in Peru, and São Paulo in Brazil, the integration of Japanese, Brazilian and Peruvian cultures",
"Hoppers" => "There’s nothing like Hoppers in London. Sure, there’s good Sri Lankan food in certain pockets of the capital. But very few restaurants are exclusively Sri Lankan (most are South Indian and certainly don’t do hoppers, the egg-topped pancakes after which this Soho restaurant is named); the few exceptions are okay, rather than amazing. So the fact that Hoppers is outrageously good is even more impressive. The small room, a sexy Soho take on all things Sri Lankan, is always full and always buzzing (and yes, you’ll almost certainly have to queue), but it’s more than worth the wait. If small plates, full flavours and unapologetic spicing are your bag, Hoppers will get your pulse – and your tastebuds – racing.",
"Shikumen" => "Modern dim sum restaurant, in hotel setting, for classic Chinese cuisine and creative cocktails."
 }

 hash.each do |k , v|
    Restaurant.create(:name => k, :description => v)
 end