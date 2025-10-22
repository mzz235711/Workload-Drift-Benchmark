/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-25 00:00:00'::timestamp AND b.Date>='2010-07-19 20:19:06'::timestamp AND b.Date<='2014-09-11 01:14:41'::timestamp AND u.Views>=0 AND u.Views<=29 AND u.UpVotes<=69 AND u.CreationDate>='2010-10-31 01:05:15'::timestamp;

