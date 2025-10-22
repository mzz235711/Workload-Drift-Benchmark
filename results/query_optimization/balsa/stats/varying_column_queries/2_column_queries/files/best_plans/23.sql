/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.UpVotes=1;

