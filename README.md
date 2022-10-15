# To set your global username/email configuration:

    Open the command line.

    Set your username:
    git config --global user.name "FIRST_NAME LAST_NAME"

    Set your email address:
    git config --global user.email "MY_NAME@example.com"

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

# DaemonSet
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

# LoadBalancer
Microk8s alatt van egy bekapcsolhato LoadBalancer szolgaltatas a Metallb
Clusteren kivuli HA szolgaltatas, mely a kulso publikus ipcimre erkezo kereseket tovabbitja vmelyik NODE-nak,ami pedig veletlenszeruen tovabbitja vmelyik POD-nak

# Ingress

# Kornyezeti valtozok
# ConfigMap
Beallitasok, fajlok tarolasara

# Secret
Minde a ConfigMap csak Base64 kodolassal
# PersistentVolume
Persistent adattarolot definail

# PersistentVolumeClaim
Adattarolas dinamikus hozzarendelesse

# NameSpaces
A nevtereket a kornyezet elvalasztasara hasznaljuk, pl. deployment, testing, production kornyezet szetvalasztasara.
Eroforrasok, jogosultasagok kulon szabalyozhatok 





