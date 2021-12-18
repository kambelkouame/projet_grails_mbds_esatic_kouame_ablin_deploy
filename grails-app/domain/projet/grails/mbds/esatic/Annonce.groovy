package projet.grails.mbds.esatic

class Annonce {

    String  title
    String  description
    Float   price
    Boolean status
    Date    dateCreated
    Date    lastUpdated
    List    illustrations

    static hasMany = [illustrations: Illustration]

    static belongsTo = [author: User]

    static constraints = {
        title nullable: false, blank: false, size: 3..50
        description nullable: false, blank: false
        price nullable: false, min: 0F
        status nullable: false
    }

    static mapping = {
        description type: 'text'
    }
}
