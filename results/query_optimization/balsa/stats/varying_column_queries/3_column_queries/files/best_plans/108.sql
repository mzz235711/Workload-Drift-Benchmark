/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND b.Date>='2010-07-27 07:03:44'::timestamp AND u.CreationDate<='2014-07-24 12:29:07'::timestamp;

