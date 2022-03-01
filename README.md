# Liste des commandes

### Accéder à la liste des posts
GET
localhost:3000/articles


### Créer un compte
POST
localhost:3000/users/sign_up


### Se connecter
POST
localhost:3000/users/sign_in

Body: 
<code>{
    "user": {
        "email":"mail@mail.com",
        "password":"123456789"
    }
}</code>


### Se déconnecter
DELETE
localhost:3000/users/sign_out

**Token requis**


### Créer un article
POST
localhost:3000/articles

**Token requis**

Body: 
<code>
    {
      "title": "Titre",
      "content": "Contenu",
      "private": false
    }
</code>


### Créer un article
PUT
localhost:3000/articles/:id

**Token requis**

Body: 
<code>
    {
      "title": "Nouveau titre",
      "content": "Nouveau contenu",
      "private": false
    }
</code>


### Supprimer un article
DELETE
localhost:3000/articles/:id

**Token requis**


### Accéder à la liste des commentaires d'un article
GET
localhost:3000/articles/:id/comments

**Token requis**


### Ajouter un commentaire
POST
localhost:3000/articles/:article_id/comments

Body: 
<code>
    {
      "content": "Com n°2"
    }
</code>

**Token requis**


### Éditer un commentaire
PUT
localhost:3000/articles/:article_id/comments/:id

Body: 
<code>
    {
      "content": "Com n°3 en fait"
    }
</code>

**Token requis**


### Supprimer un commentaire
DELETE
localhost:3000/articles/:article_id/comments/:id

**Token requis**