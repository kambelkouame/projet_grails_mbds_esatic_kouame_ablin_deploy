package projet.grails.mbds.esatic

import grails.gorm.services.Service

@Service(Annonce)
interface AnnonceService {

    Annonce get(Serializable id)

    List<Annonce> list(Map args)

    List<Annonce> listAll()
    Long count()

    void delete(Serializable id)

    Annonce save(Annonce annonce)

}