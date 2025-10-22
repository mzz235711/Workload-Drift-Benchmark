/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Reputation<=157 AND u.Views>=0 AND u.CreationDate<='2014-08-15 15:51:54'::timestamp;

