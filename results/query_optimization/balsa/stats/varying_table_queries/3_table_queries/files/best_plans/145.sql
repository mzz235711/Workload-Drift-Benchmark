/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score>=0 AND p.ViewCount<=3476 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND pl.CreationDate>='2011-06-05 22:41:40'::timestamp AND pl.CreationDate<='2014-09-12 18:19:20'::timestamp;

