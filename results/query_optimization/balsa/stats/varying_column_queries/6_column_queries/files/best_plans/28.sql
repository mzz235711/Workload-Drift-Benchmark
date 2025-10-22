/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND b.Date>='2010-07-20 20:47:27'::timestamp AND b.Date<='2014-09-08 01:14:00'::timestamp AND u.Reputation>=1 AND u.Views<=79;

