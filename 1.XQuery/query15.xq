(:  Q15. Print the keywords in emphasis in annotations of closed auctions. :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $a in
  $auction/site/closed_auctions/closed_auction/annotation/description/parlist/
   listitem/
   parlist/
   listitem/
   text/
   emph/
   keyword/
   text()
return <text>{$a}</text>
