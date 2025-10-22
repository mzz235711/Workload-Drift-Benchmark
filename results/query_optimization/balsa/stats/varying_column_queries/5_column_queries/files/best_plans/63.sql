/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND u.Views<=105 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-09-30 13:11:57'::timestamp;

