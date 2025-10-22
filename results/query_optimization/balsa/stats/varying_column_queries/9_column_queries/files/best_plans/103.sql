/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=3 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=4 AND u.Reputation>=1 AND u.Reputation<=356 AND u.CreationDate>='2010-07-19 19:08:28'::timestamp AND u.CreationDate<='2014-09-05 19:10:12'::timestamp;

