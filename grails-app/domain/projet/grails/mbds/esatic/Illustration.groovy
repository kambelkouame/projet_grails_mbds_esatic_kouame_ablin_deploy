package projet.grails.mbds.esatic

class Illustration {
    /*
    Chemin pour accéder aux images via deux valeurs de configuration
    url = chemin externe (http://localhost:8081/assets/grails.svg)
    path = chemin interne (C:\Users\Utilisateur\IdeaProjects\projet-grails-mbds-esatic\grails-app\assets\images\grails.svg)
     */
    String filename

    static belongsTo = [annonce: Annonce]

    static constraints = {
        filename nullable: false, blank: false
    }
}
