/*+ HashJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.VoteTypeId=5 AND b.Date<='2014-09-13 02:21:44'::timestamp AND u.UpVotes>=0;

