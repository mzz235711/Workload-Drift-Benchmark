/*+ HashJoin(ph v u c p pl)
 HashJoin(v u c p pl)
 HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (v (u (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND ph.PostHistoryTypeId=25 AND ph.CreationDate<='2014-09-02 01:52:48'::timestamp AND v.CreationDate='2010-09-24 00:00:00'::timestamp AND u.Views>=0;

