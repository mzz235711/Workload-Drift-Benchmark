/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND u.Reputation<=143 AND u.Views>=0 AND u.Views<=299 AND u.CreationDate<='2014-08-26 07:30:06'::timestamp;

