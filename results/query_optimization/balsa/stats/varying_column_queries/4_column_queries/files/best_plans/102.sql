/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-04 12:40:24'::timestamp;

