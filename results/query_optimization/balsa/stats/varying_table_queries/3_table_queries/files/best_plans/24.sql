/*+ HashJoin(ph u c)
 MergeJoin(u c)
 IndexScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-24 17:52:21'::timestamp AND c.CreationDate<='2014-09-09 16:35:33'::timestamp AND u.Reputation<=477 AND u.Views>=0 AND u.Views<=38 AND u.DownVotes=0 AND u.CreationDate<='2014-08-23 21:40:59'::timestamp;

