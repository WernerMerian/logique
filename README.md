# Cours de logique

Auteurs : Titouan Leclercq et Werner Mérian

## Présentation du projet

Nous cherchons dans ce projet à construire un cours de logique à la fois complet et accessible, se basant sur les cours que nous avons pu avoir lors de notre scolarité à l'École Normale Supérieure de Lyon et au Master de Logique Mathématiques et des Fondements de l'Informatique (LMFI).

L'ordre des chapitres est le suivant :

I. Bases de la logique

1. Ensemble inductif, preuves par induction, propositions

2. Logique du premier ordre, modèles, preuves

II. Théorie des ensembles

3. Les mathématiques et la théorie des ensembles

4. Ordinaux

5. Cardinaux

6. Cofinalité

III. Théorie des modèles

[A compléter]

IV. Calculabilité

7. Modèles de calcul

8. \'Enumérations et théorèmes de calculabilité

9. Codage des propositions, hiérarchie arithmétique

10. Théorèmes d'incomplétude de Gödel

V. Théorie de la démonstration

11. Calcul des séquents

12. Déduction naturelle

13. Lambda-calcul


## Protocole de compilation

Dépendances :

- [ ] TeX live
- [ ] latexmk
- [ ] le package python `Pygments`, voir: [https://pygments.org/](https://pygments.org/). Ce package python est requis par le package LaTeX `minted`, pour la coloration syntaxique notamment.)

Compilation : lancer la commande suivante

```bash
$ make
```

Super-nickel ! Le pdf compilé apparaît dans le repertoire courant sous le nom `./logique.pdf`


## License

Ce travail ©2024 réalisé Titouan Leclercq et Werner Mérian est sous licence [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)
