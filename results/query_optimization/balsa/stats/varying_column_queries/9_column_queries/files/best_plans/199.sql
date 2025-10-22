/*+ HashJoin(ph c p pl v)
 HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((ph ((c (p pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-07-29 14:11:05'::timestamp AND c.CreationDate<='2014-08-27 19:43:16'::timestamp AND p.Score>=-4 AND p.Score<=8 AND p.ViewCount>=0 AND p.CommentCount>=0 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

