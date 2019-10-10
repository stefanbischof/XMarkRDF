(:  Q2. Return the initial increases of all open auctions. :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $b in $auction/site/open_auctions/open_auction
return <increase>{$b/bidder[1]/increase/text()}</increase>

