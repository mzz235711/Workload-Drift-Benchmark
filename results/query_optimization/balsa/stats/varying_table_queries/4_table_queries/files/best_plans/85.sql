/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-2 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-09-21 04:08:56'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=5;

