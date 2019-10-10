(:  Q14. Return the names of all items whose description contains the  :)
(:       word `gold'. :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $i in $auction/site//item
where contains(string(exactly-one($i/description)), "gold")
return $i/name/text()
(: return <name>{$i/name/text()}</name> :)

