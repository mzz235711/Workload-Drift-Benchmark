/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2011-02-10 14:59:26'::timestamp AND ph.CreationDate<='2014-09-09 05:49:40'::timestamp AND u.Reputation>=1 AND u.Reputation<=1036 AND u.UpVotes>=0 AND u.UpVotes<=152 AND u.CreationDate<='2014-08-27 15:48:10'::timestamp;

