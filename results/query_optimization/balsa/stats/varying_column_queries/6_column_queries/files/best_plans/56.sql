/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score<=12 AND p.ViewCount>=0 AND p.ViewCount<=7111 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.CreationDate<='2014-09-11 17:09:42'::timestamp;

