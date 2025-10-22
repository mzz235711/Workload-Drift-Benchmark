/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-27 09:09:25'::timestamp AND ph.CreationDate<='2014-08-17 12:40:52'::timestamp AND u.Views>=0 AND u.Views<=11 AND u.DownVotes=0 AND u.CreationDate<='2014-08-31 18:00:20'::timestamp;

