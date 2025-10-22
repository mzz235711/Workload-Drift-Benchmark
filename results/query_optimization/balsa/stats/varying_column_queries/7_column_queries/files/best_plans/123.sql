/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-21 10:57:06'::timestamp AND c.CreationDate<='2014-09-03 13:03:36'::timestamp AND ph.PostHistoryTypeId=6 AND ph.CreationDate>='2010-07-30 16:06:54'::timestamp AND ph.CreationDate<='2014-06-22 18:01:35'::timestamp AND u.Reputation<=211 AND u.UpVotes>=0;

