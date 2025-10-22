/*+ HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(v)
 Leading((((c p) pl) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-07 15:12:01'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=9369 AND p.CommentCount<=13 AND p.CreationDate<='2014-09-04 16:26:45'::timestamp AND v.VoteTypeId=5 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

