/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading((b (c (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=2 AND c.CreationDate>='2010-08-30 12:42:22'::timestamp AND b.Date>='2010-11-16 18:25:15'::timestamp AND u.Views>=0 AND u.Views<=227 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=70 AND u.CreationDate>='2010-08-10 19:46:30'::timestamp;

