/*+ HashJoin(c b u ph)
 HashJoin(c b u)
 MergeJoin(b u)
 IndexScan(c)
 SeqScan(b)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c (b u)) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND u.Views>=0 AND u.DownVotes<=0;

