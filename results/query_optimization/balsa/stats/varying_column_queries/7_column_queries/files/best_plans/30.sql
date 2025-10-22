/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 MergeJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.Score>=-4 AND p.AnswerCount<=42 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-08-25 02:43:39'::timestamp AND ph.CreationDate>='2011-01-12 05:33:37'::timestamp AND ph.CreationDate<='2014-09-10 22:11:03'::timestamp AND v.VoteTypeId=2;

