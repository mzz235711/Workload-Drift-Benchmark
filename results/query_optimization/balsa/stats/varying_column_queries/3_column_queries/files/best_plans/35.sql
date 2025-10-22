/*+ HashJoin(p b)
 IndexScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate>='2010-09-28 14:30:29'::timestamp;

