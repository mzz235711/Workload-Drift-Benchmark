/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate<='2014-09-10 17:00:11'::timestamp AND b.Date>='2010-12-04 17:26:49'::timestamp AND u.Reputation<=219 AND u.Views<=2342 AND u.CreationDate>='2010-08-10 08:19:24'::timestamp AND u.CreationDate<='2014-09-10 19:39:25'::timestamp;

