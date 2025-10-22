/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score>=-9 AND p.Score<=57 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=4 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-13 15:39:17'::timestamp AND ph.CreationDate>='2011-01-25 12:11:54'::timestamp;

