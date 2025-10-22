/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.Reputation>=1 AND u.DownVotes=0 AND u.CreationDate<='2014-09-10 18:21:34'::timestamp;

