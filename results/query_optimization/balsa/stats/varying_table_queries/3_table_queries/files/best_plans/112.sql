/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-09-19 15:00:04'::timestamp AND ph.CreationDate<='2014-08-13 10:55:17'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=137 AND u.DownVotes<=0;

