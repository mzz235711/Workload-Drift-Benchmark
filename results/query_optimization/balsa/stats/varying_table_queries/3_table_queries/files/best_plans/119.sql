/*+ HashJoin(c u v)
 MergeJoin(u v)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((c (u v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=2 AND c.CreationDate>='2010-07-19 21:38:48'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-08-28 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-09-29 20:22:42'::timestamp AND u.CreationDate<='2014-08-25 13:15:33'::timestamp;

