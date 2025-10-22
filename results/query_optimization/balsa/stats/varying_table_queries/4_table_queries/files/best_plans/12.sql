/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-04 10:38:03'::timestamp AND p.CreationDate<='2014-09-10 13:48:16'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=439;

