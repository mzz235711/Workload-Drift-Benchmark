/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-08-22 01:30:24'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-19 21:36:12'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-04 06:34:02'::timestamp;

