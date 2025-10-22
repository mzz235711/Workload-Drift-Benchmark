/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-09-29 17:06:14'::timestamp AND b.Date<='2014-09-04 14:00:19'::timestamp AND u.Views>=0 AND u.UpVotes>=0;

