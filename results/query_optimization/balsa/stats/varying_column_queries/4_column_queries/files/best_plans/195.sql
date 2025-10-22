/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-29 16:24:46'::timestamp AND c.CreationDate<='2014-09-14 01:30:35'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

