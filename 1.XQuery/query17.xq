(:  Q17. Which persons don't have a homepage? :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $p in $auction/site/people/person
where empty($p/homepage/text())
return <person name="{$p/name/text()}"/>

