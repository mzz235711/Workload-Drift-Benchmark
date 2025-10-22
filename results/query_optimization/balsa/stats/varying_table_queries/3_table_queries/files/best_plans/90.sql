/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount>=0 AND p.ViewCount<=9207 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5;

