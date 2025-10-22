/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-03 15:59:18'::timestamp AND ph.PostHistoryTypeId=5 AND u.Reputation>=1 AND u.Reputation<=108 AND u.DownVotes>=0 AND u.CreationDate>='2010-08-19 21:20:00'::timestamp;

