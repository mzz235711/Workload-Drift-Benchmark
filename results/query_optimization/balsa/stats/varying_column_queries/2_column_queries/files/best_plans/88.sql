/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation>=1 AND u.UpVotes=0;

