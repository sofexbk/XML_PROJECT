declare variable $file1 := doc("file:///C:/Users/SOUFIAN%20BK/IdeaProjects/XMLPROJECT/src/XML/Notes.xml");
declare variable $file2 := doc("file:///C:/Users/SOUFIAN%20BK/Downloads/Etudiants.xml");

<Result>
{
    for $etudiant1 in $file1//Etudiant
    let $etudiant2 := $file2//Etudiant[CodeApogee = $etudiant1/CodeApogee]
    where xs:decimal($etudiant1/MoyenneGénérale) > 12
    return
        <Etudiant>
            <CodeApogee>{$etudiant1/CodeApogee/text()}</CodeApogee>
            <Nom>{$etudiant2/Nom/text()}</Nom>
            <Prenom>{$etudiant2/Prenom/text()}</Prenom>
            <DateNaissance>{$etudiant2/DateNaissance/text()}</DateNaissance>
            <LieuNaissance>{$etudiant2/LieuNaissance/text()}</LieuNaissance>
            <MoyenneGenerale>{$etudiant1/MoyenneGénérale/text()}</MoyenneGenerale>
        </Etudiant>
}
</Result>