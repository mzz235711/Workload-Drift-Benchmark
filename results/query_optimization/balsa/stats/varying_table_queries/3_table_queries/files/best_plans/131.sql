/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=-4 AND p.ViewCount>=0 AND p.ViewCount<=2804 AND p.AnswerCount=5 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-15 20:56:50'::timestamp AND pl.CreationDate<='2014-08-07 07:02:39'::timestamp AND ph.CreationDate>='2010-10-29 19:58:12'::timestamp AND ph.CreationDate<='2014-08-27 05:40:08'::timestamp;

