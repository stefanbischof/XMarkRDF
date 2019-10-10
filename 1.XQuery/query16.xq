(:  Q16. Return the IDs of those auctions :)
(:       that have one or more keywords in emphasis. (cf. Q15) :)

declare ordering unordered;

declare variable $xml external;

let $auction := doc($xml) return
for $a in $auction/site/closed_auctions/closed_auction
where
  not(
    empty(
      $a/annotation/description/parlist/listitem/parlist/listitem/text/emph/
       keyword/
       text()
    )
  )
return <person id="{$a/seller/@person}"/>
