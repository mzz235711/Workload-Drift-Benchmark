/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.PostTypeId=1 AND p.Score>=-2 AND u.DownVotes>=0 AND u.DownVotes<=4 AND u.UpVotes>=0 AND u.CreationDate>='2011-01-13 18:25:59'::timestamp;

