/*+ HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (c (v (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.Score<=27 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2012-06-08 02:00:49'::timestamp AND pl.CreationDate<='2014-08-05 13:19:55'::timestamp AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0;

