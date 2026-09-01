# Cours de logique

Auteurs : Titouan Leclercq et Werner Mérian

## Présentation du projet

Nous cherchons dans ce projet à construire un cours de logique à la fois complet et accessible, se basant sur les cours que nous avons pu avoir lors de notre scolarité à l'École Normale Supérieure de Lyon et au Master de Logique Mathématiques et des Fondements de l'Informatique (LMFI).

L'ordre des chapitres est le suivant :

I. Bases de la logique

1. Ensemble inductif, preuves par induction

2. Logique propositionnelle

3. Logique du premier ordre, modèles, preuves

4. Théorie des ensembles ordonnés, filtres

5. Topologie générale, métrique, dualité de Stone

II. Théorie des ensembles

6. La théorie ZFC et la formalisation des mathématiques

7. Ordinaux, cardinaux et cofinalité

8. Combinatoire sur les ordinaux : clubs, ensembles stationnaires

9. Modèle de ZFC et absoluité

10. Théorie descriptive des ensembles 

III. Théorie des modèles

11. Etude des classes élémentaires

12. Amalgamations et parties définissables

13. Théories logiques et élimination des quantificateurs

14. Types de la théorie des modèles

IV. Calculabilité

15. Langage régulier et automates finis

16. Langage algébrique et automates à pile

17. Modèles de calcul : fonctions récursives, machines de Turing

18. Enumérations et théorèmes de calculabilité

19. Arithmétique et incomplétude

V. Théorie de la démonstration

20. Calcul des séquents, complétude, logique intuitionniste

21. Théorie abstraite de la réécriture

22. Déduction naturelle

23. Lambda-calcul non typé

24. Lambda-calcul typé

25. Cohérence de l'arithmétique


## Protocole de compilation

Dépendances :

- [ ] TeX live
- [ ] latexmk
- [ ] le package python `Pygments`, voir: [https://pygments.org/](https://pygments.org/). Ce package python est requis par le package LaTeX `minted`, pour la coloration syntaxique notamment.

Compilation : lancer la commande suivante

```bash
$ make
```

Super-nickel ! Le pdf compilé apparaît dans le repertoire courant sous le nom `./logique.pdf`


## License

Ce travail ©2024 réalisé Titouan Leclercq et Werner Mérian est sous licence [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)

![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)
