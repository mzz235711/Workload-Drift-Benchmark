/*+ MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.Score>=-3 AND p.Score<=16 AND p.CommentCount>=0 AND p.CommentCount<=12 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-13 17:42:32'::timestamp AND u.UpVotes=1;

