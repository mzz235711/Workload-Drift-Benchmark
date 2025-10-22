/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=282 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-20 00:26:58'::timestamp AND u.CreationDate<='2014-08-06 23:00:17'::timestamp;

