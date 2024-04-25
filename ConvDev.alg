<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (devise_source==&quot;USD&quot; ET devise_destination==&quot;EUR&quot;) ALORS" texte="ConvDev"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION ObtenirTauxChange(devise_source, devise_destination)" code="201#ObtenirTauxChange#devise_source, devise_destination">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction"/>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="SI (devise_source==&quot;USD&quot; ET devise_destination==&quot;EUR&quot;) ALORS" code="6#devise_source==&quot;USD&quot; ET devise_destination==&quot;EUR&quot;">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="RENVOYER 0.85" code="205#0.85"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="SI (devise_source==&quot;EUR&quot; ET devise_destination==&quot;USD&quot;) ALORS" code="6#devise_source==&quot;EUR&quot; ET devise_destination==&quot;USD&quot;">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="RENVOYER 1.8" code="205#1.8"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                        <item algoitem="SINON" code="9#sinon">
                            <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                            <item algoitem="RENVOYER -1" code="205#-1"/>
                            <item algoitem="FIN_SINON" code="11#finsinon"/>
                        </item>
                    </item>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="montant EST_DU_TYPE NOMBRE" code="1#NOMBRE#montant"/>
        <item algoitem="taux_change EST_DU_TYPE NOMBRE" code="1#NOMBRE#taux_change"/>
        <item algoitem="montant_converti EST_DU_TYPE NOMBRE" code="1#NOMBRE#montant_converti"/>
        <item algoitem="devise_source EST_DU_TYPE CHAINE" code="1#CHAINE#devise_source"/>
        <item algoitem="devise_destination EST_DU_TYPE CHAINE" code="1#CHAINE#devise_destination"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez le montant à convertir&quot;" code="4#entrez le montant à convertir#1"/>
        <item algoitem="LIRE montant" code="2#montant#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez la devise source:&quot;" code="4#entrez la devise source:#1"/>
        <item algoitem="LIRE devise_source" code="2#devise_source#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez la devise destination:&quot;" code="4#entrez la devise destination:#1"/>
        <item algoitem="LIRE devise_destination" code="2#devise_destination#pasliste"/>
        <item algoitem="taux_change PREND_LA_VALEUR ObtenirTauxChange(devise_source, devise_destination)" code="5#taux_change#ObtenirTauxChange(devise_source, devise_destination)#pasliste"/>
        <item algoitem="SI (taux_change==-1) ALORS" code="6#taux_change==-1">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Impossible de trouver le taux de change pour ces devises&quot;" code="4#Impossible de trouver le taux de change pour ces devises#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="montant_converti PREND_LA_VALEUR montant*taux_change" code="5#montant_converti#montant*taux_change#pasliste"/>
                <item algoitem="AFFICHER &quot;Le montant converti est:&quot;" code="4#Le montant converti est:#1"/>
                <item algoitem="AFFICHER montant_converti" code="3#montant_converti#1#pasliste"/>
                <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                <item algoitem="AFFICHER devise_destination" code="3#devise_destination#1#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
