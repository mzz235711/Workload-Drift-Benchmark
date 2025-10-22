/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND u.UpVotes>=0 AND u.UpVotes<=326;

