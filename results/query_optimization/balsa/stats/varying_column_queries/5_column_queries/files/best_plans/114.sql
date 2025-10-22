/*+ HashJoin(v b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((v (b (u c)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=4 AND c.CreationDate<='2014-09-07 15:19:41'::timestamp AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes<=288;

