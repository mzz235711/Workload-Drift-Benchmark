/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-24 09:40:57'::timestamp AND b.Date<='2014-09-12 15:11:36'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=10503 AND p.CommentCount>=0 AND p.CommentCount<=20;

