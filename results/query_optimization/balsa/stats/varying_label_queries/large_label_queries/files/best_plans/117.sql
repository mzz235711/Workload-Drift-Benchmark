/*+ HashJoin(c b v u)
 MergeJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes<=114;

