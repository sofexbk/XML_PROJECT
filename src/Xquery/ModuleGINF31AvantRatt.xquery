<Notes>
{
  for $etudiant in doc("Notes.xml")//Etudiant
 return
    <Etudiant>
      <CodeApogee>{data($etudiant/CodeApogee)}</CodeApogee>
      <NOM>{data($etudiant/NOM)}</NOM>
      <PRENOM>{data($etudiant/PRENOM)}</PRENOM>
      {
        let $firstModule := $etudiant/Module[1]
        return (
          <Java>{data($firstModule/Matières/Matière[1])}</Java>,
          <XML>{data($firstModule/Matières/Matière[2])}</XML>
        )
      }
      <MoyenneAvantRatt>{data($etudiant/Module[1]/Moyenne)}</MoyenneAvantRatt>
    </Etudiant>
}
</Notes>
