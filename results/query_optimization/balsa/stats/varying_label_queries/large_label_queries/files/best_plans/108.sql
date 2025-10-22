/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-10 22:19:11'::timestamp;

