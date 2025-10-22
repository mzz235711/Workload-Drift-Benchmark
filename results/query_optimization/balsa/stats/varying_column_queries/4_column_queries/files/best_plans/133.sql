/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=6 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=0;

