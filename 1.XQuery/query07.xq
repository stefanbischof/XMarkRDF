(:  Q7. How many pieces of prose are in our database?} :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $p in $auction/site
return
  count($p//description) + count($p//annotation) + count($p//emailaddress)

