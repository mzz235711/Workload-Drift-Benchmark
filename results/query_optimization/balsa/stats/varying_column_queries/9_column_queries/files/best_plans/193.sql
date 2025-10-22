/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 SeqScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=3 AND c.CreationDate<='2014-09-10 19:53:39'::timestamp AND u.Reputation>=1 AND u.Reputation<=2384 AND u.Views<=153 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=10 AND u.CreationDate<='2014-09-10 13:39:25'::timestamp;

