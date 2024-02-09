# Choix des styles

## Table des matières

**[1. Mise en forme des caractères](#mise-en-forme-des-caractères)**

  - [1.1. La fonte](#la-fonte)
  - [1.2. Typographie](#typographie)

**[2. Mise en forme des titres](#mise-en-forme-des-titres)**

  - [2.1. Style des titres](#style-des-titres)

**[3. Mise en forme des listes](#mise-en-forme-des-listes)**

  - [3.1. Les listes non-ordonnées](#les-listes-non-ordonnees)
  - [3.2. Les listes ordonnées](#les-listes-ordonnees)

**[4. Formatage du texte mathématique](#formatage-du-texte-mathematique)**

  - [4.1. Formatage des définitions](#formatage-des-definitions)
  - [4.2. Formatage des théorèmes](#formatage-des-theoremes)

**[5. Mise en page](#mise-en-page)**

  - [5.1. Gestion des blancs](#gestion-des-blancs)

**[6. Ergonomie pour l'utilisateur](#ergonomie-pour-l-utilisateur)**

  - [6.1 La numérotation](#la-numerotation)
  - [6.2. Les liens](#les-liens)


## 1. Mise en forme des caractères {#mise-en-forme-des-caractères}

### 1.1. La fonte {#la-fonte}

- police de caractères : latin moderne
- taille de la fonte : 11pt

### 1.2. Typographie {#typographie}

- les noms de famille seront en petite capitale
- les guillemets seront les guillemets français « et »
- La première lettre de chaque chapitre sera une lettrine sur 2 lignes, et le premier mot de chaque chapitre (sans sa première lettre) sera écrit en petite capitale
- des espaces fines insecables là où il faut


## 2. Mise en forme des titres {#mise-en-forme-des-titres}

### 2.1. Style des titres {#style-des-titres}

- lenny


## 3. Mise en forme des listes {#mise-en-forme-des-listes}

### 3.1. Les listes non-ordonnées {#les-listes-non-ordonnees}

On adopte le style Markdown, autrement dit :

- pour les items de premier niveau, on utilise une puce circulaire pleine •
- pour les items de premier niveau, on utilise une puce circulaire vide ◦
- pour les items de premier niveau, on utilise une puce carrée pleine ▪
- pour les items de premier niveau, on utilise une puce carrée vide ▫

S'il y a besoin de niveaux de profondeur supplémentaires, c'est qu'il y a un problème. Trop, c'est trop ! Il faudrait commencer à songer à casser son énumérations en plusieurs à la suite.

Ce choix est notamment motivé par le fait que l'on va écrire beaucoup de texte mathématique, et confondre un tiret demi-cadratin avec un signe moins n'est pas admissible.

### 3.2. Les listes ordonnées {#les-listes-ordonnees}

Pour les items d'un théorèmes où un certain nombre de propositions sont équivalentes, on utilisera des chiffres romains minuscules en italique, encadrés par des parenthèses non-italiques : (i), (ii), (iii), ...


## 4. Formatage du texte mathématique {#formatage-du-texte-mathematique}

### 4.1. Formatage des définitions {#formatage-des-definitions}
### 4.2. Formatage des théorèmes {#formatage-des-theoremes}

- amsthm classique : une fonte droite pour le corps des environnements de définition, une fonte oblique pour le corps des environnements de théorème.


## 5. Mise en page {#mise-en-page}

### 5.1. Gestion des blancs {#gestion-des-blancs}

- espacement inter-ligne : 
- marges : 3cm à gauche, à droite, en haut et en bas


## 6. Ergonomie pour l'utilisateur {#ergonomie-pour-l-utilisateur}

### 6.1 La numérotation {#la-numerotation}

Les définitions, théorèmes, etc. sont numérotés `<n°-chap>.<n°-sec>.<n°-subsec>.<id>`

### 6.2. Les liens {#les-liens}

- hyperref
- retour pour les notes de base de page
