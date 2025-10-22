/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate<='2014-09-12 06:18:59'::timestamp AND u.Views<=19 AND u.UpVotes<=19 AND u.CreationDate>='2010-07-26 19:08:57'::timestamp;

