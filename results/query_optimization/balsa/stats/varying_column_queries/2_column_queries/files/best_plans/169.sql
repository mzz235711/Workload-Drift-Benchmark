/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date<='2014-08-20 17:48:38'::timestamp AND u.UpVotes<=244;

