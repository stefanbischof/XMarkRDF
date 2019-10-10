(:  Q5.  How many sold items cost more than 40? :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
count(
  for $i in $auction/site/closed_auctions/closed_auction
  where $i/price/text() >= 40
  return $i/price
)

