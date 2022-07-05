# kubernetes-eroforras-fajlok
kulonbozo kubernetes eroforras fajlok definicios leirasai

# POD
Legkisebb menedzselt resze a kubernetesnek, mely containereket tartalmaz
# ReplicaSet
Podok gyujtemenye,melyeket egyben lehet kezelni. Minden modositas leallassal/elinditassal jar
# Deployment
Podok gyujtemenye,melyeket egyben lehet kezelni,de ez mar a modositaskor RollingUpdate-et hasznal , mely letrehoz egy uj replicaSetet azt felskalazza, mig a regi replicaSetet kozben leskalazza, igy nincs szolgaltatas kieseési problema
# StatefulSet
Olyan Deployment ami storage definiciot is tartalmaz

# DaemaonSet
Olyan StatefulSet ami kepes  a POD-ok statikus szetosztasara a Node-ok kozott

# ConfigMap
Beallitasok, fajlok tarolasara

# Secret
Minde a ConfigMap csak Base64 kodolassal
# PersistentVolume
Persistent adattarolot definail

# PersistentVolumeClaim
Adattarolas dinamikus hozzarendelesse