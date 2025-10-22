/*+ MergeJoin(u v b)
 HashJoin(v b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((u (v b))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND b.Date>='2010-07-21 04:33:12'::timestamp AND b.Date<='2014-09-12 10:47:50'::timestamp;

