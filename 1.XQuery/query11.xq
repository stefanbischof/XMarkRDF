(:  Q11. For each person, list the number of items currently on sale whose :)
(:       price does not exceed 0.02% of the person's income. :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $p in $auction/site/people/person
let $l :=
  for $i in $auction/site/open_auctions/open_auction/initial
  where $p/profile/@income > 5000 * exactly-one($i/text())
  return $i
return <items name="{$p/name/text()}">{count($l)}</items>

