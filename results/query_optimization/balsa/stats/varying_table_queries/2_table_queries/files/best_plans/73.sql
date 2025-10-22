/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.ViewCount<=23545 AND p.CommentCount=0 AND u.CreationDate>='2010-07-19 19:18:14'::timestamp;

