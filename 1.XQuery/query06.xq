(:  Q6. How many items are listed on all continents? :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $b in $auction//site/regions return count($b//item)

