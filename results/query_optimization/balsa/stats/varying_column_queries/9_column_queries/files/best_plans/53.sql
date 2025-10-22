/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-26 01:07:46'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-03 16:46:21'::timestamp AND u.Reputation>=1 AND u.Reputation<=1645 AND u.UpVotes>=0 AND u.UpVotes<=68 AND b.Date<='2014-09-05 19:19:44'::timestamp;

