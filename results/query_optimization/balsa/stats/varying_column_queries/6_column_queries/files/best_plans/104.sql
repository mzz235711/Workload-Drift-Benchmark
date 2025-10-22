/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2012-04-09 06:02:40'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.Reputation<=789 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-21 09:07:26'::timestamp;

