/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-1 AND p.Score<=128 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-28 04:24:05'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.CreationDate>='2010-09-24 12:34:57'::timestamp AND u.CreationDate<='2014-09-11 22:11:23'::timestamp;

