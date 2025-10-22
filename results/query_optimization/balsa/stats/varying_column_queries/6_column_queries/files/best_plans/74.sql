/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.CommentCount=0 AND p.CreationDate>='2010-10-06 20:10:59'::timestamp AND p.CreationDate<='2014-09-09 03:36:27'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-06-20 14:44:32'::timestamp;

