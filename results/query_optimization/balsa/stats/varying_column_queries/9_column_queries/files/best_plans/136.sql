/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND b.Date>='2010-07-20 05:19:09'::timestamp AND b.Date<='2014-08-13 12:03:33'::timestamp AND u.Reputation>=1 AND u.Reputation<=1148 AND u.DownVotes>=0 AND u.CreationDate>='2011-02-08 02:50:22'::timestamp AND u.CreationDate<='2014-09-04 17:25:07'::timestamp;

