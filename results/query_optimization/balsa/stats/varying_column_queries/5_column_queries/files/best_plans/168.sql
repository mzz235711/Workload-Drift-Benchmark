/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-27 00:48:43'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-04 08:00:36'::timestamp;

