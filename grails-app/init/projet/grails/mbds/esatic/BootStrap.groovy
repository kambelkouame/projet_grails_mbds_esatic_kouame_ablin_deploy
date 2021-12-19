package projet.grails.mbds.esatic

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def clientRole = new Role(authority: 'ROLE_CLIENT').save()
        def moderateurRole = new Role(authority: 'ROLE_MODERATOR').save()

        def adminUser = new User(username: "admin", password: "admin").save()
        def moderatorUser = new User(username: "moderator", password: "moderator").save()
        def clientUser = new User(username: "user", password: "user").save()

        UserRole.create(adminUser, adminRole)
        UserRole.create(clientUser, clientRole)
       UserRole.create(moderatorUser, moderateurRole)

        UserRole.withSession {
            it.flush()
            it.clear()
        }

        // On défini une liste de 5 chaines de caractères pour les différents utilisateurs
        ["Alice", "Bob", "Charly", "Denis", "Soro"].each {
            String name ->
                // Pour chaque tour, on crée un nouvel utilisateur
                def userInstance = new User(username: name, password: "password")
                // Pour chaque utilisateur on itère 5 fois pour créer les annonces
                (1..5).each {
                    Integer annonceIdx ->
                        // On crée une nouvelle annonce
                        def annonceInstance =
                                new Annonce(title: "Title $name $annonceIdx",
                                        description: "Description $name $annonceIdx",
                                        price: annonceIdx * 100, status: Boolean.TRUE)
                        (1..5).each {
                            // Pour chaque annonce, on ajoute 5 illustrations
                            annonceInstance.addToIllustrations(new Illustration(filename: "grails.svg"))
                        }
                        // On ajoute pour finir l'annonce à l'utilisateur
                        userInstance.addToAnnonces(annonceInstance)
                }
                // On sauvegarde l'utilisateur
                userInstance.save(flush: true, failOnError: true)
        }

    }
    def destroy = {
    }
}
