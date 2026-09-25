# timeline

Un enregistreur de vol pour Kubernetes : il répond à « pourquoi ce pod a redémarré hier ? ».
Un binaire dans le cluster observe pods, nodes, workloads et events, et enregistre chaque transition dans une base SQLite embarquée.
Un plugin `kubectl timeline` rejoue ensuite l'histoire d'une ressource, et `kubectl timeline why` en explique la cause : OOM, probe, drain, rollout, scheduling.
Léger et agnostique : pas de dépendance externe, pas de Prometheus obligatoire, installation en un chart Helm.
Fait pour être lu après coup, quand `kubectl describe` a déjà oublié.
