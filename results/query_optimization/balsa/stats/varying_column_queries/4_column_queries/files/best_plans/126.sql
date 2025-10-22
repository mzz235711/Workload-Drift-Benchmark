/*+ NestLoop(c v u)
 HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading(((c v) u)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.BountyAmount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

