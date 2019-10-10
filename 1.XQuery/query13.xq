(:  Q13. List the names of items registered in Australia along with  :)
(:       their descriptions. :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $i in $auction/site/regions/australia/item
return <item name="{$i/name/text()}">{$i/description}</item>

