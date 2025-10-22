/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date>='2010-07-19 21:19:06'::timestamp AND b.Date<='2014-09-09 15:47:22'::timestamp AND u.UpVotes<=7;

