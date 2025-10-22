/*+ HashJoin(ph v u c p pl)
 HashJoin(v u c p pl)
 HashJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (v (u (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Views<=93;

