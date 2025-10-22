/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 20:39:07'::timestamp AND b.Date<='2014-09-12 15:31:32'::timestamp AND u.Reputation<=2538 AND u.Views>=0 AND u.Views<=15;

