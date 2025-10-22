/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-09 23:59:50'::timestamp AND b.Date<='2014-09-01 20:01:30'::timestamp AND p.Score>=-1 AND p.Score<=109 AND p.ViewCount>=0;

