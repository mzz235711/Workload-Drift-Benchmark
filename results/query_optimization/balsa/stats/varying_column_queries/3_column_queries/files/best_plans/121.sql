/*+ HashJoin(v u b)
 MergeJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.Views>=0 AND u.Views<=23 AND u.DownVotes<=1;

