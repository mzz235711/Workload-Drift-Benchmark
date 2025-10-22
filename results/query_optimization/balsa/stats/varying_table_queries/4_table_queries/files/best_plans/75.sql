/*+ HashJoin(p c pl v)
 HashJoin(c pl v)
 HashJoin(pl v)
 SeqScan(p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading((p (c (pl v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score>=-3 AND p.Score<=31 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-20 12:25:30'::timestamp AND p.CreationDate<='2014-09-08 12:35:43'::timestamp AND v.CreationDate='2012-04-24 00:00:00'::timestamp;

