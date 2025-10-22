/*+ HashJoin(ph c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(p pl)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph ((c (v u)) (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate<='2014-09-13 21:08:57'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=5988 AND p.CommentCount<=15 AND ph.CreationDate>='2011-05-09 04:25:41'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.DownVotes<=1 AND u.UpVotes<=7;

