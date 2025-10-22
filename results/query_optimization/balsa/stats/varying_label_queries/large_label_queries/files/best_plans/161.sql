/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-10-15 01:25:28'::timestamp AND p.Score>=-1 AND p.ViewCount<=4873;

