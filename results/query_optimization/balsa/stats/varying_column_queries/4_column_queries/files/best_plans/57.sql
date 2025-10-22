/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-01 16:49:52'::timestamp;

