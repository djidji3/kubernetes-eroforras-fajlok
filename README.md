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

# Service
A POD-ok elereset biztositja
ClusterIP:
 a clusteren beluli elereshez. A POD-ok egymas kozti kommunikaciojahoz. Jellemzoen frontend-backend kommunikaciohoz. Iptables nat parancsokkal oldja meg
NodePort:
a kulso elereshez. A cluster osszes NODE-jan elereheto lesz egy fix porton
LoadBalancer:
felhoszolgaltatok terheles-eloszto rendszeren keresztul erheto el
ExternalName:
dns alapjan tovabbitja a forgalmat

# DNS
Kulon kell telepiteni, nem resze a kubernetesnek
Egyik megvalositas a CoreDNS

# ConfigMap
Beallitasok, fajlok tarolasara

# Secret
Minde a ConfigMap csak Base64 kodolassal
# PersistentVolume
Persistent adattarolot definail

# PersistentVolumeClaim
Adattarolas dinamikus hozzarendelesse