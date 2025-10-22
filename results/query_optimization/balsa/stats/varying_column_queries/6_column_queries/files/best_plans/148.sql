/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=6 AND ph.CreationDate>='2010-09-24 05:24:00'::timestamp AND ph.CreationDate<='2014-09-10 20:48:04'::timestamp AND u.Views>=0 AND u.Views<=113 AND u.DownVotes>=0;

