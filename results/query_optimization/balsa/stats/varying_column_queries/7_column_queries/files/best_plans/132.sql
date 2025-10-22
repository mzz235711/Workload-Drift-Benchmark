/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-06 15:22:43'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=55 AND b.Date>='2010-07-19 21:19:06'::timestamp;

