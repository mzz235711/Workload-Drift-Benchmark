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
 IndexScan(pl)
 Leading((ph (v (u (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND p.CreationDate>='2010-07-29 07:05:38'::timestamp AND pl.CreationDate<='2014-09-08 15:54:55'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-12-31 16:02:54'::timestamp AND ph.CreationDate<='2014-08-15 09:28:28'::timestamp AND u.Views>=0 AND u.Views<=108;

