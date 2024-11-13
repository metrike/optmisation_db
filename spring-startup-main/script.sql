-- Insérer les utilisateurs
INSERT INTO users (name, email) VALUES ('Abou', 'abou@gmail.com');
INSERT INTO users (name, email) VALUES ('Mira', 'mira@example.com');
INSERT INTO users (name, email) VALUES ('Léo', 'leo@example.com');

-- Insérer les projets
INSERT INTO projet (name, description) VALUES ('Projet Alpha', 'Développement du nouveau produit alpha.');
INSERT INTO projet (name, description) VALUES ('Projet Beta', 'Réalisation de l’étude de marché pour le projet Beta.');

-- Assurez-vous que ces requêtes sont exécutées et que les projets existent avant de continuer
-- Insérer les tâches
INSERT INTO task (title, status, projet_id, users_id) VALUES ('Analyse de marché', 'En cours', 1, 1);
INSERT INTO task (title, status, projet_id, users_id) VALUES ('Conception du produit', 'En cours', 1, 2);
INSERT INTO task (title, status, projet_id, users_id) VALUES ('Campagne publicitaire', 'Planifié', 2, 3);

-- Assurez-vous que les utilisateurs et les projets sont insérés avant cette étape
-- Lier les utilisateurs et les projets
INSERT INTO users_projet (users_id, projet_id) VALUES (1, 1);
INSERT INTO users_projet (users_id, projet_id) VALUES (2, 1);
INSERT INTO users_projet (users_id, projet_id) VALUES (3, 2);


CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_projet_name ON projet(name);
CREATE INDEX idx_task_projet_id ON task(projet_id);
CREATE INDEX idx_task_users_id ON task(users_id);
CREATE INDEX idx_users_project_users_id ON users_project(users_id);
CREATE INDEX idx_users_project_projet_id ON users_project(projet_id);

CREATE MATERIALIZED VIEW view_task_count_per_project AS
SELECT projet_id, COUNT(*) AS task_count
FROM task
GROUP BY projet_id;
REFRESH MATERIALIZED VIEW view_task_count_per_project;
SELECT * FROM view_task_count_per_project;

-- Insérer les utilisateurs
INSERT INTO users (name, email) VALUES ('Abou', 'abou@gmail.com');
INSERT INTO users (name, email) VALUES ('Mira', 'mira@example.com');
INSERT INTO users (name, email) VALUES ('Léo', 'leo@example.com');

-- Insérer les projets
INSERT INTO projet (name, description) VALUES ('Projet Alpha', 'Développement du nouveau produit alpha.');
INSERT INTO projet (name, description) VALUES ('Projet Beta', 'Réalisation de l’étude de marché pour le projet Beta.');

-- Assurez-vous que ces requêtes sont exécutées et que les projets existent avant de continuer
-- Insérer les tâches
INSERT INTO task (title, status, projet_id, users_id) VALUES ('Analyse de marché', 'En cours', 1, 1);
INSERT INTO task (title, status, projet_id, users_id) VALUES ('Conception du produit', 'En cours', 1, 2);
INSERT INTO task (title, status, projet_id, users_id) VALUES ('Campagne publicitaire', 'Planifié', 2, 3);

-- Assurez-vous que les utilisateurs et les projets sont insérés avant cette étape
-- Lier les utilisateurs et les projets
INSERT INTO users_projet (users_id, projet_id) VALUES (1, 1);
INSERT INTO users_projet (users_id, projet_id) VALUES (2, 1);
INSERT INTO users_projet (users_id, projet_id) VALUES (3, 2);


CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_projet_name ON projet(name);
CREATE INDEX idx_task_projet_id ON task(projet_id);
CREATE INDEX idx_task_users_id ON task(users_id);
CREATE INDEX idx_users_project_users_id ON users_project(users_id);
CREATE INDEX idx_users_project_projet_id ON users_project(projet_id);

CREATE MATERIALIZED VIEW view_task_count_per_project AS
SELECT projet_id, COUNT(*) AS task_count
FROM task
GROUP BY projet_id;
REFRESH MATERIALIZED VIEW view_task_count_per_project;
SELECT * FROM view_task_count_per_project;

