/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.Score>=-1 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-04 06:51:12'::timestamp AND p.CreationDate<='2014-09-05 18:12:16'::timestamp AND u.Reputation>=1 AND u.Reputation<=31170 AND u.DownVotes=0;

