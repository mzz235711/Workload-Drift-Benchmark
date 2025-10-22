/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.Reputation=1 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=49 AND u.CreationDate<='2014-08-27 09:50:08'::timestamp;

