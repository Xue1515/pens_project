# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Pen.destroy_all
User.destroy_all


file = URI.open('https://avatars.githubusercontent.com/u/85875844?v=4')
user = User.new(email: 'sue@sue.com', password: "123456")
user.photo.attach(io: file, filename: 'sue', content_type: 'image/png')

user.save!

file = URI.open('https://avatars.githubusercontent.com/u/68551131?v=4')
user = User.new(email: 'pablo@pablo.com', password: "123456")
user.photo.attach(io: file, filename: 'pablo', content_type: 'image/png')

user.save!

file = URI.open('https://avatars.githubusercontent.com/u/4697576?v=4')
user = User.new(email: 'and@and.com', password: "123456")
user.photo.attach(io: file, filename: 'and', content_type: 'image/png')

user.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282065/pen01_f6922x.jpg')
pen = Pen.new(title: 'Hester Dorsey Richardson', description: "The fountain pen was available in Europe in the 17th century and is shown by contemporary references.", user_id: user.id, price: 10, category: "Classic")
pen.photo.attach(io: file, filename: 'pen01', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282066/pen03_o9plms.jpg')
pen = Pen.new(title: 'Leonardo da Vinci', description: "According to Qadi al-Nu'man al-Tamimi (d. 974) in his Kitab al-Majalis wa 'l-musayarat, the Fatimid caliph Al-Mu'izz li-Din Allah in Arab Egypt demanded a pen that would not stain his hands or clothes", user_id: user.id, price: 10, category: "Original")
pen.photo.attach(io: file, filename: 'pen02', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282065/pen02_og66bi.jpg')
pen = Pen.new(title: 'Stephen Perry ', description: "hese were sold worldwide to many who previously could not afford to write, thus encouraging the development of education and literacy.", user_id: user.id, price: 10, category: "Royal")
pen.photo.attach(io: file, filename: 'pen03', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629304933/pstq4coaxnz6lzx18hy35hzi60s6.jpg')
pen = Pen.new(title: 'Azel Storrs Lyman ', description: "Only after three key inventions were in place that the fountain pen became a widely popular writing instrument. ", user_id: user.id, price: 10, category: "Original")
pen.photo.attach(io: file, filename: 'pen05', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629304935/208chihkuaqx49438x8cgmpzetn9.jpg')
pen = Pen.new(title: '1850', description: "This boosted the Birmingham pen trade and by the 1850s, more than half the steel-nib pens manufactured in the world were made in Birmingham.", user_id: user.id, price: 10, category: "Royal")
pen.photo.attach(io: file, filename: 'pen06', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383250/digital-content-writers-india-y3Tl-cbU-CU-unsplash_afetl6.jpg')
pen = Pen.new(title: 'Duncan MacKinnon,', description: "Stylographic pens are now used mostly for drafting and technical drawing but were very popular in the decade beginning in 1875. In the 1880s the era of the mass-produced fountain pen finally began. ", user_id: user.id, price: 10, category: "Classic")
pen.photo.attach(io: file, filename: 'pen07', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383250/john-jennings-I_kGNSAqD-8-unsplash_rn5wtz.jpg')
pen = Pen.new(title: 'Bloomsburg Pennsylvania', description: "At this time, fountain pens were almost all filled by unscrewing a portion of the hollow barrel or holder and inserting the ink by means of an eyedropper – a slow and messy procedure.", user_id: user.id, price: 10, category: "Original")
pen.photo.attach(io: file, filename: 'pen08', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383250/john-jennings-IcT8l8DDek8-unsplash_spuo8n.jpg')
pen = Pen.new(title: 'Conklin', description: "The tipping point, however, was the runaway success of Walter A. Sheaffer's lever-filler, introduced in 1912,[20] paralleled by Parker's roughly contemporary button-filler.", user_id: user.id, price: 10, category: "Royal")
pen.photo.attach(io: file, filename: 'pen09', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383250/every-angle-emQqWt7goEY-unsplash_pucin4.jpg')
pen = Pen.new(title: 'Parker Jointless', description: "George Safford Parker released the Parker Jointless, named so because its barrel was single-piece to prevent leakage. The section assembly fit into the pen's end like a cork stopper; any leaked ink was kept inside the nib.", user_id: user.id, price: 10, category: "Classic")
pen.photo.attach(io: file, filename: 'pen10', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383251/mj-s-cw2ai6A_eeM-unsplash_bm3upx.jpg')
pen = Pen.new(title: 'Pelikan', description: "This was based upon the acquisition of patents for solid-ink fountain pens from the factory of Slavoljub Penkala from Croatia (patented 1907, in mass production since 1911), and the patent of the Hungarian Theodor Kovacs for the modern piston filler by 1925.", user_id: user.id, price: 10, category: "Royal")
pen.photo.attach(io: file, filename: 'pen12', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383251/laura-chouette-yllKbB_75l4-unsplash_cetie8.jpg')
pen = Pen.new(title: 'Parker Duofold', description: "Fountain pens retained their dominance: early ballpoint pens were expensive, were prone to leaks and had irregular inkflow, while the fountain pen continued to benefit from the combination of mass production and craftsmanship.", user_id: user.id, price: 10, category: "Classic")
pen.photo.attach(io: file, filename: 'pen13', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383252/trey-gibson-LxphooAHzvc-unsplash_mff7vx.jpg')
pen = Pen.new(title: 'Parker 51', description: "Bíró's patent, and other early patents on ball-point pens often used the term ball-point fountain pen, because at the time the ball-point pen was considered a type of fountain pen; that is, a pen that held ink in an enclosed reservoir.", user_id: user.id, price: 10, category: "Original")
pen.photo.attach(io: file, filename: 'pen14', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383319/kelly-sikkema-2NPV75ItVhg-unsplash_1_lrrvbq.jpg')
pen = Pen.new(title: 'Sheaffer Snorkel', description: "Refinements in ballpoint pen production gradually ensured its dominance over the fountain pen for casual use.[37] Although cartridge-filler fountain pens are still in common use in France, Italy, Germany, Austria, India, and the United Kingdom.", user_id: user.id, price: 10, category: "Royal")
pen.photo.attach(io: file, filename: 'pen15', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383320/thomas-kinto-Isimwno4_BA-unsplash_q8znld.jpg')
pen = Pen.new(title: 'Faber-Castell', description: "Retailers continue to sell fountain pens and inks for casual and calligraphic use. Recently, fountain pens have made a resurgence, with many manufacturers of fountain pens saying sales are climbing.", user_id: user.id, price: 10, category: "Classic")
pen.photo.attach(io: file, filename: 'pen16', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383320/lawrence-aritao-GlbW3FzMSFE-unsplash_cvayjd.jpg')
pen = Pen.new(title: 'Lamy 2000', description: "The feed allows ink to flow when the pen is being put to paper but ensures ink does not flow when the pen is not in use. The feed makes use of capillary action; this is noticeable when a pen is refilled with a brightly coloured ink.", user_id: user.id, price: 10, category: "Original")
pen.photo.attach(io: file, filename: 'pen17', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383320/joanna-kosinska-B6yDtYs2IgY-unsplash_n0zazr.jpg')
pen = Pen.new(title: 'Mathur et al.', description: "ollowing the discovery of the platinum group of metals which include ruthenium, osmium, and iridium, a small quantity of iridium was isolated and used on the iridium-tipped gold dip pen nibs of the 1830s.", user_id: user.id, price: 10, category: "Royal")
pen.photo.attach(io: file, filename: 'pen18', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383320/every-angle-emQqWt7goEY-unsplash_io8gy5.jpg')
pen = Pen.new(title: 'Oblique', description: "First, the thickness of the nib metal changes flex. When the nib alloy has been pressed thick it will result in a hard nib, while thinly pressed nibs are more flexible.", user_id: user.id, price: 10, category: "Original")
pen.photo.attach(io: file, filename: 'pen19', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629383321/bermix-studio-KI2qurir3Mc-unsplash_gayhlh.jpg')
pen = Pen.new(title: ' Copperplate script', description: "Furthermore, competition between the major pen brands such as Parker and Waterman, and the introduction of lifetime guarantees, meant that flexible nibs could no longer be supported profitably. In countries where this rivalry was not present to the same degree, such as the UK and Germany, flexible nibs are more common.", user_id: user.id, price: 10, category: "Royal")
pen.photo.attach(io: file, filename: 'pen20', content_type: 'image/jpg')

pen.save!
