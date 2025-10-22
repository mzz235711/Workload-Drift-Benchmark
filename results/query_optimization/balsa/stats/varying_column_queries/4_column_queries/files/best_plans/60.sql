/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=8;

