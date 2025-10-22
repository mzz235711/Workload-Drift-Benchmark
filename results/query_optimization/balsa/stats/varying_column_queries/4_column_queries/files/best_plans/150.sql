/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.DownVotes<=1 AND u.UpVotes<=5 AND u.CreationDate<='2014-09-13 05:04:12'::timestamp;

