/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading((b (c (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=22 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=22;

