/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score=1 AND p.ViewCount>=0 AND p.ViewCount<=23738 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-04 07:01:46'::timestamp AND u.CreationDate<='2014-09-11 02:22:41'::timestamp;

