puts "Inseriamo tre articoli per tre utenti"

u1 = User.find(1)
u1.eg_posts.create(headline: "Il mio primo articolo", incipit: "Perché scrivere questo articolo")
u1.eg_posts.create(headline: "Il mio secondo articolo", incipit: "Ci ho preso gusto")
u1.eg_posts.create(headline: "Il mio terzo articolo", incipit: "Adesso sono esperto")

u2 = User.find(2)
u2.eg_posts.create(headline: "La conferenza uno", incipit: "Una interessante conferenza sul cielo")
u2.eg_posts.create(headline: "La conferenza due", incipit: "Perché si formano le nuvole? Capiamo il ciclo dell'acqua")
u2.eg_posts.create(headline: "La conferenza tre", incipit: "Il sole è una stella nana")

u3 = User.find(3)
u3.eg_posts.create(headline: "Studio di caso alfa", incipit: "In questo studio la nostra azienda è stata brava")
u3.eg_posts.create(headline: "Studio di caso beta", incipit: "In questo studio identifichiamo i pesci nell'acquario")
u3.eg_posts.create(headline: "Studio di caso gamma", incipit: "Questo studio è praticamente identico a quello dell'architetto")
