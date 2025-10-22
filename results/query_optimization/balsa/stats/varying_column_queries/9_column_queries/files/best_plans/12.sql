/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2010-09-27 09:27:46'::timestamp AND pl.CreationDate<='2014-08-15 18:42:41'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-10 18:56:57'::timestamp AND p.CreationDate<='2014-09-11 00:46:29'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.CreationDate>='2011-04-26 09:32:27'::timestamp;

