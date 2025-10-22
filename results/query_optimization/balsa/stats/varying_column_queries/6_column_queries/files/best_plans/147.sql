/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-31 06:19:15'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=150 AND u.CreationDate>='2011-04-19 15:59:49'::timestamp AND u.CreationDate<='2014-08-15 18:11:24'::timestamp;

