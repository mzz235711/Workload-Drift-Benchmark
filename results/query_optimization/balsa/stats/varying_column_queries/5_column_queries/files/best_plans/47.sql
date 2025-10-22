/*+ HashJoin(b c u)
 HashJoin(b c)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading(((b c) u)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate='2014-01-30 16:22:58'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=653 AND u.CreationDate>='2010-10-27 10:08:08'::timestamp;

