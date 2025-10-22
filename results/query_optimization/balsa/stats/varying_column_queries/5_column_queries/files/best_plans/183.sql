/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=200 AND u.Views<=15 AND u.UpVotes<=55 AND u.CreationDate<='2014-09-06 03:31:02'::timestamp;

