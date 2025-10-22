/*+ HashJoin(c v u)
 MergeJoin(v u)
 IndexScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate='2012-08-20 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=13;

