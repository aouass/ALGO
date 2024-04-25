<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER plus_Grand" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#taille" algoitem="taille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#plus_Grand" algoitem="plus_Grand EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#donner la taille#1" algoitem="AFFICHER &quot;donner la taille&quot;"/>
        <item code="2#taille#pasliste" algoitem="LIRE taille"/>
        <item code="12#i#0#taille-1" algoitem="POUR i ALLANT_DE 0 A taille-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#tab#i" algoitem="LIRE tab[i]"/>
            <item code="5#plus_Grand#tab[0]#pasliste" algoitem="plus_Grand PREND_LA_VALEUR tab[0]"/>
            <item code="6#plus_Grand&lt;tab[i]" algoitem="SI (plus_Grand&lt;tab[i]) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#plus_Grand#tab[i]#pasliste" algoitem="plus_Grand PREND_LA_VALEUR tab[i]"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#le plus grand nbre:#1" algoitem="AFFICHER &quot;le plus grand nbre:&quot;"/>
        <item code="3#plus_Grand#0#pasliste" algoitem="AFFICHER plus_Grand"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
