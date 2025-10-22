/*+ HashJoin(v u b)
 MergeJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

