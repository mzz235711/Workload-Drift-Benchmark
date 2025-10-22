/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-23 02:22:44'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=55;

