/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-26 18:55:26'::timestamp AND u.Reputation<=566 AND u.UpVotes>=0 AND u.UpVotes<=79 AND u.CreationDate>='2010-08-21 22:57:18'::timestamp AND u.CreationDate<='2014-09-08 15:52:40'::timestamp;

