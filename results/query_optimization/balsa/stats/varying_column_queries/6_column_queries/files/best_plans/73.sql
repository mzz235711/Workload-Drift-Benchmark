/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2010-09-14 14:13:03'::timestamp AND pl.CreationDate<='2014-08-11 09:09:35'::timestamp AND p.CommentCount>=0 AND v.BountyAmount>=0 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-26 20:04:17'::timestamp;

