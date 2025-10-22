/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-19 19:38:30'::timestamp AND b.Date<='2014-09-10 03:09:53'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0;

