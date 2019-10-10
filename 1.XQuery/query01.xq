(:  Q1.Return the name of the person with ID `person0'. :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $b in $auction/site/people/person[@id = "person0"] return $b/name/text()

