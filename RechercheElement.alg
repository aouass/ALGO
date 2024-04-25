<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#elt" algoitem="elt EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#taille" algoitem="taille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#index" algoitem="index EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#index#-1#pasliste" algoitem="index PREND_LA_VALEUR -1"/>
        <item code="4#entrez la taille du tableau#0" algoitem="AFFICHER &quot;entrez la taille du tableau&quot;"/>
        <item code="2#taille#pasliste" algoitem="LIRE taille"/>
        <item code="12#i#1#taille" algoitem="POUR i ALLANT_DE 1 A taille">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#tab#i" algoitem="LIRE tab[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="2#elt#pasliste" algoitem="LIRE elt"/>
        <item code="12#i#1#taille" algoitem="POUR i ALLANT_DE 1 A taille">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#tab[i]==elt" algoitem="SI (tab[i]==elt) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#index#i#pasliste" algoitem="index PREND_LA_VALEUR i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="6#index==-1" algoitem="SI (index==-1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#l'élément n'a pas été trouvé dans le tableau#0" algoitem="AFFICHER &quot;l'élément n'a pas été trouvé dans le tableau&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#l'élément a été trouvé à l'index#0" algoitem="AFFICHER &quot;l'élément a été trouvé à l'index&quot;"/>
                <item code="4#  #0" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="3#index#0#pasliste" algoitem="AFFICHER index"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
