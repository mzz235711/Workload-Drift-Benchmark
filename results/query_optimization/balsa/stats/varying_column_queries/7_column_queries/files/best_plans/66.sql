/*+ HashJoin(c b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 IndexScan(c)
 SeqScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-10 20:34:15'::timestamp AND c.CreationDate<='2014-09-09 03:59:18'::timestamp AND v.BountyAmount>=0 AND b.Date>='2010-08-05 10:41:34'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes<=198;

