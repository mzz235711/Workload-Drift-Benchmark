/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=33 AND ph.CreationDate>='2010-11-05 13:34:50'::timestamp AND ph.CreationDate<='2014-09-03 14:19:30'::timestamp AND u.UpVotes>=0 AND u.CreationDate>='2010-07-26 19:17:42'::timestamp AND u.CreationDate<='2014-09-13 20:36:55'::timestamp;

