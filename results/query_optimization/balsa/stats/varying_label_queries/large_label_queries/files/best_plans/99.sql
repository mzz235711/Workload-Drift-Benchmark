/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-19 19:39:10'::timestamp AND b.Date<='2014-08-27 11:33:10'::timestamp AND p.ViewCount>=0 AND p.CommentCount>=0;

