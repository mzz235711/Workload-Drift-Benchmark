/*+ HashJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND u.Reputation=31 AND u.Views>=0 AND u.Views<=578 AND u.DownVotes>=0 AND u.DownVotes<=2 AND u.UpVotes<=29;

