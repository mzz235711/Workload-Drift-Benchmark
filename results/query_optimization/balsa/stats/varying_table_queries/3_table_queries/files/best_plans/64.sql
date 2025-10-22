/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate<='2014-08-17 08:00:33'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1;

