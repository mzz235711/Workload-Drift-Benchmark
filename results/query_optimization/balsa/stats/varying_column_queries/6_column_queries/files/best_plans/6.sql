/*+ HashJoin(b c u p pl)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=2 AND p.CreationDate>='2010-08-04 16:29:26'::timestamp AND p.CreationDate<='2014-09-07 19:02:35'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=3;

