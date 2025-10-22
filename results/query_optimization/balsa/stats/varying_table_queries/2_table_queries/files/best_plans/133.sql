/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate>='2010-08-19 13:40:35'::timestamp;

