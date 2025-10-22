/*+ NestLoop(u v b)
 HashJoin(u v)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading(((u v) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount<=100;

