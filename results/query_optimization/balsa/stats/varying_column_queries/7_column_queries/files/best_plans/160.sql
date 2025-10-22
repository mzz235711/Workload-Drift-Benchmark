/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-19 01:38:51'::timestamp AND c.CreationDate<='2014-09-08 09:03:59'::timestamp AND ph.PostHistoryTypeId=3 AND u.Views<=126 AND u.DownVotes<=7 AND u.UpVotes>=0 AND u.UpVotes<=20;

