/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.UpVotes>=0 AND u.UpVotes<=38 AND u.CreationDate<='2014-08-21 20:27:59'::timestamp;

