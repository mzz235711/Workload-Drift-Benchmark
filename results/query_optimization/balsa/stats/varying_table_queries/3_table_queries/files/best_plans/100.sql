/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=2 AND c.CreationDate<='2014-09-10 11:29:05'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=165 AND u.CreationDate>='2010-08-10 04:33:05'::timestamp;

