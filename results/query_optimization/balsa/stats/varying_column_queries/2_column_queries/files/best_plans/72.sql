/*+ MergeJoin(c b u v)
 MergeJoin(b u v)
 NestLoop(u v)
 IndexScan(c)
 SeqScan(b)
 SeqScan(u)
 IndexScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.DownVotes>=0 AND u.DownVotes<=2;

