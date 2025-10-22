/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-27 10:41:43'::timestamp AND pl.CreationDate<='2014-06-17 11:45:20'::timestamp AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CommentCount<=18 AND u.UpVotes>=0;

