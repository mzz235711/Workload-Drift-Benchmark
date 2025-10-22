/*+ HashJoin(ph b c u)
 HashJoin(b c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (b (c u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date>='2010-09-03 18:14:15'::timestamp AND b.Date<='2014-09-07 19:39:41'::timestamp AND u.Views<=53 AND u.UpVotes=0;

