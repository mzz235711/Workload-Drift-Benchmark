/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-22 16:25:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=670 AND u.DownVotes<=0 AND u.UpVotes<=19;

