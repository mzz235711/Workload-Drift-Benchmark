/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=1530 AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=44;

