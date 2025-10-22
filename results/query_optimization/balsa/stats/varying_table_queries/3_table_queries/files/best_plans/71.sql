/*+ HashJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date>='2010-09-12 19:00:41'::timestamp AND b.Date<='2014-09-06 04:28:10'::timestamp AND u.Reputation=101 AND u.UpVotes<=236 AND u.CreationDate<='2014-09-11 01:07:42'::timestamp;

