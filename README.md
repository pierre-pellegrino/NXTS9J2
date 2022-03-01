# Liste des commandes

### Accéder à la liste des posts
GET
localhost:3000/articles

<hr>

### Créer un compte
POST
localhost:3000/users/sign_up

<hr>

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

<hr>

### Se déconnecter
DELETE
localhost:3000/users/sign_out

**Token requis**

<hr>

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

<hr>

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

<hr>

### Supprimer un article
DELETE
localhost:3000/articles/:id

**Token requis**

<hr>

### Accéder à la liste des commentaires d'un article
GET
localhost:3000/articles/:id/comments

**Token requis**

<hr>

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

<hr>

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

<hr>

### Supprimer un commentaire
DELETE
localhost:3000/articles/:article_id/comments/:id

**Token requis**
