/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-10-01 18:05:14'::timestamp AND b.Date<='2014-08-22 11:45:57'::timestamp AND p.ViewCount<=4712;

