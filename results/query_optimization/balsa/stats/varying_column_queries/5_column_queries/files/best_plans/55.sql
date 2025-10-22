/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-11 05:14:30'::timestamp AND u.CreationDate<='2014-08-11 11:19:59'::timestamp;

